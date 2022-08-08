// Max-JS
autowatch = 1;

// często używana funkcja (musi być zdefiniowana przed potencjalnym wywołaniem,
// ponieważ hoistowane (wyciągane) są tylko definicje funkcji w zasięgu globalnym tego obiektu)
Math.clip = function (x, min, max) {
    return Math.min(Math.max(x, min), max)
}

// nazwa receive'a do wysyłania notacji
var RECEIVE_SYMBOL = "sysXi";

// nazwy instrumentów
var INSTR_NAMES = ["fl", "cl", "vn", "vc"];

// wartości bitów dla kolejnych instrumentów (dane z GUI)
var INSTR_NUMS_FOR_BINARY_CODING =
    INSTR_NAMES.map(function (x, i) { return Math.pow(2, i) }).reverse();

// ile taktów generujemy dla każdego segmentu?
var MEASURES_PER_SEGMENT = 4;

// fragment ze stałym układem segmentów:
var CONSTANT_SEGMENTS = {
    1: {
        "tempo_text": "Festivo",
        "art_text": "marcato",
        "1": {
            "mit4": [9, 1, 0, 10, 1, 0, 11, 1, 0, 12, 1, 0],
            "dynprofile": "ff",
            "amoll": 0
        },
        "2": {
            "mit4": [9, 2, 0, 10, 2, 0, 11, 2, 0, 12, 2, 0],
            "dynprofile": "ff",
            "amoll": 0
        },
        "3": {
            "mit4": [9, 3, 0, 10, 3, 0, 11, 3, 0, 12, 3, 0],
            "dynprofile": "ff",
            "amoll": 0
        },
        "4": {
            "mit4": [9, 4, 0, 10, 4, 0, 11, 4, 0, 12, 4, 0],
            "dynprofile": "ff",
            "amoll": 0
        }
    },
    2: {
        "tempo_text": "",
        "art_text": "marcato!",
        "1": {
            "mit4": [13, 1, 0, 8, 1, 0, 13, 1, 0, 8, 1, 0],
            "dynprofile": "dim",
            "amoll": 0
        },
        "2": {
            "mit4": [13, 2, 0, 8, 2, 0, 13, 2, 0, 8, 2, 0],
            "dynprofile": "dim",
            "amoll": 0
        },
        "3": {
            "mit4": [13, 3, 0, 8, 3, 0, 13, 3, 0, 8, 3, 0],
            "dynprofile": "dim",
            "amoll": 0
        },
        "4": {
            "mit4": [13, 4, 0, 8, 4, 0, 13, 4, 0, 8, 4, 0],
            "dynprofile": "dim",
            "amoll": 0
        }
    },
    3: {
        "tempo_text": "",
        "art_text": "marcato!",
        "1": {
            "mit4": [13, 1, 0, 8, 1, 0, 13, 1, 0, 8, 1, 0],
            "dynprofile": "pp",
            "amoll": 0
        },
        "2": {
            "mit4": [13, 2, 0, 8, 2, 0, 13, 2, 0, 8, 2, 0],
            "dynprofile": "pp",
            "amoll": 0
        },
        "3": {
            "mit4": [13, 3, 0, 8, 3, 0, 13, 3, 0, 8, 3, 0],
            "dynprofile": "pp",
            "amoll": 0
        },
        "4": {
            "mit4": [13, 4, 0, 8, 4, 0, 13, 4, 0, 8, 4, 0],
            "dynprofile": "pp",
            "amoll": 0
        }
    },
    100: {
        "tempo_text": "",
        "art_text": "",
        "1": {
            "mit4": [19, 1, 0, 19, 1, 0, 19, 1, 0, 19, 1, 0],
            "dynprofile": "pp",
            "amoll": 0
        },
        "2": {
            "mit4": [19, 1, 0, 19, 1, 0, 19, 1, 0, 19, 1, 0],
            "dynprofile": "pp",
            "amoll": 0
        },
        "3": {
            "mit4": [19, 1, 0, 19, 1, 0, 19, 1, 0, 19, 1, 0],
            "dynprofile": "pp",
            "amoll": 0
        },
        "4": {
            "mit4": [19, 1, 0, 19, 1, 0, 19, 1, 0, 19, 1, 0],
            "dynprofile": "pp",
            "amoll": 0
        }
    }
}

// jeden globalny obiekt z danymi 
var data = {};

// czy ostatni takt wygenerowanego segmentu ma mieć pauzę generalną?
var general_pause = false;

function set_general_pause(val) {
    general_pause = val > 0;
}

// licznik segmentów - do wyświetlania w widoku
var segment_counter = 1;
function set_segment_counter(val) {
    var cnt = parseInt(val);
    if (cnt)
        segment_counter = cnt;
}
function get_segment_counter() {
    outlet(0, "segment_counter", cnt);
}
function place_segment_counter() {
    return segment_counter++;
}
function reset_segment_counter() {
    set_segment_counter(1);
}

// obiekty Dict do obsługi we/wy z Maxem
var dict2view_glob;
var dict2view_instr;
var dict_input;
reset();
post("\n•\tphasedict-js loaded ok\n");

//post((2).toString(2).padStart(4,"0")); // nie ma padStart w Maxie
//post(instr_names.map(function(x,i){return Math.pow(2,i)}).reverse())

function reset() {
    init_dicts();
    init_data();
    reset_segment_counter();
}

function init_dicts() {
    dict2view_glob = new Dict("phrasebook-to-view");
    dict2view_glob.clear();
    dict2view_glob.set("tempo_text", "");
    dict2view_glob.set("art_text", "");
    dict2view_instr = [1, 2, 3, 4].map(function (n) {
        var d = new Dict("phrasebook-to-view-ins" + n);
        d.clear();
        return d;
    });
    dict_input = new Dict();
    //post("• phrasebook Dicts initialized.");
}
init_dicts.local = 1;


function init_data() {
    INSTR_NAMES.forEach(function (iname) {
        var d = {};
        d.rep_accum = 0;
        data[iname] = d;
    })
}

/**
 * Funkcja przetwarzające wejściowe dane z GUI (napędzanego zmianami presetów)
 * @param id nazwa obiektu dictionary (Max)
 */
function dictionary(id) {
    dict_input.name = id;
    _copy_data_from_input_dict_to_internal_data_struct();
    _process_instruments();
    _prepare_and_send_output_dict();
}

function get_const(num) {
    var const_data = CONSTANT_SEGMENTS[num];
    if (const_data) {
        dict2view_glob.set("tempo_text", const_data.tempo_text);
        dict2view_glob.set("art_text", const_data.art_text);
        dict2view_glob.set("counter_text", place_segment_counter());

        dict2view_instr.forEach(function (di, i) {
            var data_for_instr = const_data[i + 1];
            if (general_pause) data_for_instr.mit4[9] = 19; // pauza całotaktowa
            di.set("mit4", data_for_instr.mit4);
            di.set("dynprofile", data_for_instr.dynprofile);
            di.set("amoll", data_for_instr.amoll);
            dict2view_glob.replace(i + 1, di);
        });
        _send_dict2view()
    }
}

// <><><><><><> definicje funkcji pomocniczych

function _copy_data_from_input_dict_to_internal_data_struct() {
    INSTR_NAMES.forEach(function (e) {
        var inst_dict = dict_input.get(e); /// Dict z danymi wejściowymi dla tego instrumentu
        var idata = data[e]; /// obiekt js z danymi tego instrumentu 
        idata.instrument_name = e;
        inst_dict.getkeys().forEach(function (k) {
            idata[k] = inst_dict.get(k); // przekopiowanie danych wejściowy Dict -> obiekt js
        });
    });
}

function _prepare_and_send_output_dict() {
    // --- przygotowanie dict/JSON do wysłania do przeglądarki:
    // prosta struktura JSON:
    // { tempo_text: "", art_text: "", 1: { mit: [lista 12 liczb], dynprofile:"", amoll:<0/1> }, 2: ...etc... }

    dict2view_glob.set("tempo_text", data["fl"]["text-tempo"]);
    dict2view_glob.set("art_text", data["fl"]["text-art"]);
    dict2view_glob.set("counter_text", place_segment_counter());
    dict2view_instr.forEach(function (di, i) {
        var data_for_instr = data[INSTR_NAMES[i]];
        if (general_pause) data_for_instr.mit[9] = 19; // pauza całotaktowa  
        di.set("mit4", data_for_instr.mit);
        di.set("dynprofile", data_for_instr.dynprofile);
        di.set("amoll", data_for_instr["a-moll"]);
        dict2view_glob.replace(i + 1, di);

    });

    _send_dict2view();
}

function _send_dict2view() {
    // stałe wpisy do wysłania do wszystkich instrumentów
    dict2view_glob.set("type", "next");
    dict2view_glob.set("0", "pb");
    messnamed(RECEIVE_SYMBOL, 0, "dictionary", dict2view_glob.name);
    outlet(0, "dictionary", dict2view_glob.name);
}

function _process_instruments() {
    INSTR_NAMES
        .map(function (n) { return data[n] })
        .forEach(_process_instrument);
}

function _process_instrument(d) {
    // keys: instrument_name  a-moll  dynprofile  i_from_instr  m1  m1m2  m1var  m2  m2var  m_from_instr  rep  t12  t12var  text-art  text-tempo  instrset  instr 
    //post("\nprocessing: ", d.instrument_name, Object.getOwnPropertyNames(d), "\n");

    // odpowiednik "new Array(x).fill(null)" dla ES5
    var empty_arr = Array.apply(null, new Array(MEASURES_PER_SEGMENT));

    d.mit = empty_arr.map(
        function () {
            // get "m" - numer taktu ze słownika
            // który z dwóch wariatów będzie użyty? (powtórzenie vs losowanie)
            // 0->m1 , 1->m2
            var m = _process_get_m(d);
            // wygenerowanie numeru taktu dla danego instrumentu - "m"

            // get "i" - numer instrumentu wylosowany z puli określonej parametrem
            // "instrset" - zakodowane binarnie; jeżeli równy 0 -> wybrany jest numer 
            // instrumentu, który aktualnie przetwarzamy
            var i = _process_get_i(d);

            // get "t" - transpozycja oktawowa znormalizowana (-1..1)
            // podczas wyświetlania określana jest konkretna transpozycja
            // w oktawach (dla każdego taktu i instrumentu osobny zakres)
            var t = _process_get_t(d);

            return [m, i, t];
        }
    ).reduce(function (a, b) { return a.concat(b) });

}

function _process_get_i(d) {
    var instrset_binary_coded = d.instrset;
    var instrset_numbers = INSTR_NUMS_FOR_BINARY_CODING
        .map(function (x, i) { return ((instrset_binary_coded & x) > 0) * (i + 1) })
        .filter(function (x) { return x != 0 });
    var instrset_size = instrset_numbers.length;
    if (instrset_size)
        return instrset_numbers[Math.floor(Math.random() * instrset_size)]
    else
        return d.instr;
}

function _process_get_m(d) {
    return Math.floor(Math.clip(
        _process_instrument_rep(d) ?
            Math.floor(d.m2 + Math.random() * d.m2var) : // dla 1
            Math.floor(d.m1 + Math.random() * d.m1var),  // dla 0
        1, 19));
}

function _process_instrument_rep(d) {
    //var param = Math.min(Math.max(d.m1m2, 0), 1); // w zakresie [0..1]
    var param = Math.clip(d.m1m2, 0, 1); // w zakresie [0..1]
    if (d.rep) {
        // powtarzanie
        var prev_accum = d.rep_accum; // poprzednia wartość akumulatora
        d.rep_accum += param; // aktualizujemy akumulator (dla instrumentu)
        return Math.floor(d.rep_accum) - Math.floor(prev_accum); // abs(x2) - abs(x1) 
    } else {
        // losowanie
        return (Math.random() < param) ? 1 : 0;
    }
}

function _process_get_t(d) {
    return Math.clip(
        // losowanie od -t12var do +t12var i dodanie do t12
        (Math.random() * 2 - 1) * d.t12var + d.t12,
        -1, 1);
}

// ... _prepare_and_send_to_bach() ...
    // wyjście jak z subpatchera "gensegment" - tego oczekuje wyświetlanie 
    // zrealizowane w bibliotece bach(Max):
    // ( <dynprof> <a-moll?> ( ( m i t ) ( m i t ) ( m i t ) ( m i t ) )  ( <text> ) )
    //  ... x4
