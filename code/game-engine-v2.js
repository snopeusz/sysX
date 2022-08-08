autowatch = 1;

// -=- KONFIGURACJA

/**
 * ilość prawidłowych odpowiedzi potrzebna do ukończenia kolejnych etapów
 * na tej podstawie generowane są też tablice z ilościami wysokości
 */
var MAX_NOTES_PER_STAGE = [25, 25, 50];

/**
 * czas doliczany na odpowiedź, jako kompensacja opóźnień w sieci 
 * (od wygenerowania poprzedniej odpowiedzi do wyświetleni info 
 * na ekranach wykonawców)
 */
var LATENCY_COMPENSATION = 150;

// nazwa [receive]a do wysyłania notacji
var RECEIVE_SYMBOL = "sysXi";


// -=- ZMIENNE - STAN GRY

/**
 * Prawidłowa kolejność instrumentów
 */
var _instr_order;
var _instr_playafter;

/**
 * numer instrumentu, który ostatni zagrał dźwięk
 */
var _previous_instr = -1;

/**
 * zbiór ilości wysokości do zagrania (klasy wysokości)
 * (zaczyna się od dźwięku "c")
 */
var _pitchpool = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

/**
 * zbiór ilości zagranych wysokości w etapach 1-2
 */
var _played_pitches_s1s2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

/**
 * największa wartość w wygenerowanym pitchpoolu
 * do wyświetlania notacji (znormalizowane słupki)
 */
var _pitchpool_maxval = 0;


/**
 * punkty każdego z wykonawców
 */
var _points = [0, 0, 0, 0];


/**
 * ilość poprawnych odpowiedzi, podstawa do obliczenia przebiegu
 * czasowego części
 */
var _played_correct_notes = 0;
var _played_notes = 0;

/**
 * znacznik czasowy ostatniej odpowiedzi (ms)
 */
var _previous_note_timestamp = -1;

// -=-=- OBLICZANE ZMIENNE STANU GRY (cache i przekazywanie info)
var dict_state = new Dict("sysX.game.state");

/**
 * zmienna określająca, czy gra się toczy; po osiągnięciu (Zagraniu) wszystkich nut, 
 * ta zmienna przyjmuje wartość 'false' i przestajemy wysyłać informacje do instrumentów oraz DSP.
 *  
 */
var in_game = false;

/**
 * czy obsługa i wyświetlanie zbioru wysokości jest włączone
 * obliczana na podstawie zaawansowania/etapu gry
 */
var _pitchpool_enabled = false;
/**
 * czas na odpowiedź;
 *  obliczana na podstawie zaawansowania/etapu gry
 */
var _timeout_time = 1500;

/**
 * czy timer jest aktywny (i wyświetlany)
 * obliczana na podstawie zaawansowania/etapu gry
 */
var _timeout_enabled = false;


function init() {
    dict_state = new Dict("sysX.game.state");
    set_instr_order([1, 2, 3, 4]);
    _previous_instr = -1;
    _played_correct_notes = 0;
    _played_notes = 0;
    _points = [0, 0, 0, 0];
    _previous_note_timestamp = -1;
    //_pitchpool = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    init_pitchpool_rand();
    _played_pitches_s1s2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    in_game = false;
}

function init_pitchpool_rand() {
    var len = MAX_NOTES_PER_STAGE[2]; // ilość nut w 3 fazie
    _pitchpool = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    var BW_KEYS = [0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0];
    for (var i = 0; i < len; i++) {
        var randi = Math.min(Math.floor(Math.random() * 12), 11);
        if (BW_KEYS[randi] > 0)
            randi = Math.min(Math.floor(Math.random() * 12), 11);
        _pitchpool[randi] = _pitchpool[randi] + 1;
    }
    _pitchpool_maxval = _array_max(_pitchpool);
}

function start() {
    init();
    //messnamed("sysX.game.stan", "początek"); // powoduje pętlę
    update_game_state();
    send_notation();
    // !!! ustaw jeden z instrumentów na "zaczynasz!"
    messnamed(RECEIVE_SYMBOL, [Math.floor(Math.random() * 4) + 1, "game", "playAfter", 100]);
    messnamed(RECEIVE_SYMBOL, 0, "view", "game");
    in_game = true;
    send_DSP();
}

function stop() {
    in_game = false;
    send_DSP();
    messnamed(RECEIVE_SYMBOL, 0, "view", "none");
}

/**
 * wysyła informacje do wyświetlania (instrukcje wykonawcze)
 */
function send_notation() {
    messnamed(RECEIVE_SYMBOL, [0, "game", "timer.hide", _timeout_enabled ? 0 : 1]);
    messnamed(RECEIVE_SYMBOL, [0, "game", "pitchpool.hide", _pitchpool_enabled ? 0 : 1]);

    for (var i = 0; i < 4; i++) {
        messnamed(RECEIVE_SYMBOL, [i + 1, "game", "playAfter", _instr_playafter[i]]);
    }

    if (_timeout_enabled)
        messnamed(RECEIVE_SYMBOL, [0, "game", "timer", _timeout_time]);
    if (_pitchpool_enabled)
        messnamed(RECEIVE_SYMBOL, [0, "game", "pitchpool"],
            _pitchpool.map(function (p) { return p / _pitchpool_maxval })
        ); // tablica ilości wysokości znormalizowana do zakresu 0-1
}

//init(); _pitchpool_enabled = true; // ok
// TEST
// init(); post("pitchpool:", _pitchpool, "=", _pitchpool.reduce(function (a, b) { return a + b })); //ok
// messnamed("pp", _pitchpool);

function note(instr, pitch) {
    if (in_game) {
        process_response(instr, pitch);
        update_game_state();
        send_DSP();
        outlet(0, "ready");
    }
}

/**
 * przetwarza i ocenia otrzymaną dźwiękową odpowiedź oraz wysyła informacje wizualizujące ocenę
 * @param {number} instr numer instrumentu
 * @param {number} pitch wysokość dźwięku z detektora
 */
function process_response(instr, pitch) {
    if (instr < 1 || instr > 4) return null; // nie reagujemy na błędny komunikat
    if (pitch < 36 || pitch > 104) pitch = -1;
    var stage = get_game_stage();

    // 1. czy instrument zagrał we właściwej kolejności?
    // jaki jest oczekiwy prawidłowy numer następnego instrumentu dla poprzednio zagranego?
    var next_expected = _instr_order[(_instr_order.indexOf(_previous_instr) + 1) % 4];
    var correct_order = instr == next_expected;

    // 2. czy zagrał w wyznaczonym czasie? (doliczyć trochę na latencję)
    var current_note_timestamp = Date.now();
    var response_time = Math.max(current_note_timestamp - _previous_note_timestamp, 0.1);
    // skalowanie punktów uzależnione od prędkości odpowiedzi i zaawasnowania gry
    var time_points_multiplier = Math.floor(_timeout_time / response_time) * (stage % 1);
    var correct_timeout = (response_time - LATENCY_COMPENSATION) < _timeout_time;

    // 3. czy zagrał z dostępnej puli wysokości
    var note_pc = Math.round(pitch) % 12;
    var correct_pool = _pitchpool[note_pc] > 0;
    // powyżej sprytne rozwiązanie: jeżeli wejściowa wyokość jest spoza sensownego zakresu
    // ustawiana jest na -1. Modulo liczby ujemnej to też liczba ujemna, 
    // a indeksowanie tablicy liczbą ujemną zawsze daje <undefined>
    // undefined porównane do liczby zawsze jest fałszywe, więc mamy niepoprawną odpowiedź

    // zapamiętujemy każdą rozpoznaną wysokość
    if (note_pc >= 0)
        _played_pitches_s1s2[note_pc] = _played_pitches_s1s2[note_pc] + 1;

    // 4. określenie poprawności odpowiedzi
    var correct_answer = correct_order &&
        (correct_timeout || !_timeout_enabled) &&
        (correct_pool || !_pitchpool_enabled);

    // 5. ustawienie numeru instrumentu jako poprzedniego instrumentu
    _previous_instr = instr;

    // 6. obliczenie i zapisywanie punktacji
    var score = correct_order ? 10 : 0; //bazowa ilość punktów za właściwą kolejność
    if (_timeout_enabled) score *= time_points_multiplier;
    if (_pitchpool_enabled) score *= correct_pool ? 1.5 : 0;
    var total_instr_points = _points[instr - 1] + score;
    _points[instr - 1] = total_instr_points;


    // 7. zmiana puli wysokości
    if (_pitchpool_enabled && correct_answer) {
        _pitchpool[note_pc] = _pitchpool[note_pc] - 1;
    }

    // 8. aktualizowanie etapu gry
    update_note_count_on_answer(correct_answer);

    // 9. aktualizowanie znacznika czasowego ostatniej odpowiedzi
    _previous_note_timestamp = current_note_timestamp;

    // 10. wyślij komunikat z informacją
    var resultmsg = [
        instr,
        correct_answer ? "ok" : "fail",
        total_instr_points,
        response_time,
        pitch
    ];

    //outlet(0, resultmsg);
    messnamed("sysX.game.response", resultmsg);

    // wysłanie informacji do wyświetlenia
    messnamed(RECEIVE_SYMBOL, [
        instr,
        "game",
        correct_answer ? "ok" : "fail",
        total_instr_points,
        response_time,
        pitch
    ]);

    dict_state.set("instr", instr);
    dict_state.set("pc", note_pc);
    dict_state.set("answer", correct_answer);
    dict_state.set("stage", stage);
    dict_state.set("played_correct_notes", _played_correct_notes);
    dict_state.set("played_notes", _played_notes);
    dict_state.set("response_time", response_time);
    dict_state.set("instr_order", _instr_order);
    dict_state.set("instrs_playafter", _instr_playafter);
    dict_state.set("timeout_time", _timeout_time);
    dict_state.set("pitchpool", _pitchpool);
    dict_state.set("points", _points);
    dict_state.set("pitch", pitch);
    dict_state.set("played_pitches", _played_pitches_s1s2);
    dict_state.set("in_game", in_game);


}

// var prv = 2;
// //var testv = shuffle([1,2,3,4].filter(function(e){return e!=prv})).slice();
// var testv = shuffle([1, 2, 3, 4].filter(function (e) { return e == prv || Math.random() < 0.5 }));
// post(testv);

function update_game_state() {
    var stage = get_game_stage();
    var phase = stage % 1;
    // var stagei = Math.floor(stage);
    // włączanie atrakcji w zależności od etapu gry:
    _timeout_enabled = stage >= 1;
    _pitchpool_enabled = stage >= 2;

    // zmiana kolejności instrumentów wewnątrz każdego etapu
    // zwiększające się prawdopodobieństwo zmian pod koniec etapu
    if (phase < 0.15) {
        // na początku stała kolejność
        set_instr_order([1, 3, 2, 4]);
    } else {
        // później w miarę upływu czasu zwiększa się prawdopodobieństwo zmian
        if (Math.random() < lerp(phase, 0.15, 1, 1 / 15, 1 / 7)) {
            if (Math.random() < 0.6)
                set_instr_order(shuffle([1, 2, 3, 4]));
            else { // FIXME: ewentualnie można wykomentować tę sekcję ELSE
                // kombinacje mniejszej ilości instrumentów z ostatnio zagranym
                set_instr_order(
                    shuffle([1, 2, 3, 4].filter(function (e) { return e == _previous_instr || Math.random() < 0.5 }))
                );
            }

        }
    }

    // ustawienie czasu na reakcję (timer)
    _timeout_time = lerp(phase, 0, 1, 4000, 200);

    // ustawienie zawartości zbioru wysokości -- to robimy na początku
    // ew. pomysł - z przebiegu dotychczasowej gry

    // wysłanie informacji do obiektów w Maxie 
    // (głównie komunikacja z modułem dźwiękowym)
    messnamed("sysX.game.faza", Math.floor(stage));
    messnamed("sysX.game.faza%", phase + 0.0000001);
    messnamed("sysX.game.points_ratio", get_min_max_points_ratio())
    messnamed("sysX.game.points", _points);

    // stwierdzenie końca gry
    if (stage >= 3) {
        // end game
        stop();
        messnamed("sysX.game.stan", "koniec");
    } else {
        messnamed("sysX.game.stan", "faza", Math.floor(stage));
    }
}

function send_DSP() {
    var rs = "gamesnd"; // receive symbol name
    var stage = get_game_stage();
    var phase = stage % 1;
    messnamed(rs, "enable", in_game);
    messnamed(rs, "fx_vol", in_game ? -9 : -70);
    messnamed(rs, "fx_mode", stage >= 1); // 0-tremolo 1-tremolo oktawowe
    messnamed(rs, "fx_trem_interval", phase);
    messnamed(rs, "seq_vol", in_game ? -10 : -70);
    messnamed(rs, "seq_gains", ((stage | 0) + 1) / 4); // dodawanie kolejnych warstw w kolejnych etapach
    messnamed(rs, "seq_dur", phase);
    messnamed(rs, "seq_interval", lerp(phase, 0, 1, 1000, 100));
    messnamed(rs, "seq_interval_ratio", get_min_max_points_ratio());
    // TODO: dźwięki przy przechodzeniu między etapami
}

//--testing:
//function bang() {
//   messnamed("test", false);
//}

function get_min_max_points_ratio() {
    return _array_min(_points) / _array_max(_points);
}

function set_instr_order(ord) {
    _instr_order = ord;
    _instr_playafter = indexesFromOrder(_instr_order)
    //outlet(0, "playafter", _instr_playafter);
}

function update_note_count_on_answer(ans) {
    _played_notes += 1;
    if (ans)
        set_played_correct_notes(_played_correct_notes + 1);
}

function set_played_correct_notes(num) {
    if (num >= 0) {
        _played_correct_notes = num | 0;
        update_game_state();
    }
}

// do testów:
function set_stage(num) {
    var pn = MAX_NOTES_PER_STAGE.slice(0, num | 0).reduce(function (a, b) { return a + b });
    set_played_correct_notes(pn);
    post("set stage to", num | 0, ", notes count=", pn);
}

/**
 * 
 * @param {Array} order tablica z kolejnością instrumentów
 * 
 * Zadaniem funkcji jest zamiana tablicy z wypisaną oczekiwaną kolejnością 
 * instrumentów na tablicę z numerami instrumentów poprzedzających dany
 * instrument. W związku z tym tablica wejściowa zawiera jedną z kilku możliwch
 * układów dla tej samej kolejności, np [1,2,3,4] to ta sama kolejność 
 * co [3,4,1,2].
 * 
 */
function indexesFromOrder(order) {
    var len = order.length;
    var maxval = order.reduce(function (p, v) {
        return (p > v ? p : v);
    });
    var res = new Array(maxval);
    for (var i = 0; i < maxval; i++) {
        var index = order.indexOf(i + 1);
        var ins = undefined;
        if (index >= 0) ins = order[(index + len - 1) % len];
        res[i] = ins;
    };
    return res;
}

/**
* Shuffles array in place.
* @param {Array} a items An array containing the items.
*/
function shuffle(a) {
    var j, x, i;
    for (i = a.length - 1; i > 0; i--) {
        j = Math.floor(Math.random() * (i + 1));
        x = a[i];
        a[i] = a[j];
        a[j] = x;
    }
    return a;
}

// var ar = [1, 2, 3, 4];
// post("\nscramble:", shuffle(ar.slice(0)));
// post("\nvar:", ar);

/**
 * Linear interpolation
 * @param {number} inval input value
 * @param {number} ilo input range low limit
 * @param {number} ihi input range high limit
 * @param {number} olo output range low limit
 * @param {number} ohi output range high limit
 */
function lerp(inval, ilo, ihi, olo, ohi) {
    return (inval - ilo) / (ihi - ilo) * (ohi - olo) + olo;
}

function get_game_stage() {
    var notes2stagesmap = _array_index_in_multisegment_linear_interp(
        MAX_NOTES_PER_STAGE,
        _played_correct_notes
    );
    return Math.min(notes2stagesmap, MAX_NOTES_PER_STAGE.length);
}



function _array_index_in_multisegment_linear_interp(arr, val) {
    var ac = 0;
    var res = 0;
    for (var i = 0; i < arr.length; i++) {
        var cur = arr[i];
        var res = i + (val - ac) / cur;
        if ((ac += cur) > val) break;
    }
    return res;
}

function _array_integrate_steps(arr) {
    return arr.reduce(function (ac, nv) {
        return (ac.push(nv + (ac[ac.length - 1] || 0)), ac);
    }, []);
}

function _array_min(arr) {
    return arr.reduce(function (p, v) {
        return (p < v ? p : v);
    });
}

function _array_max(arr) {
    return arr.reduce(function (p, v) {
        return (p > v ? p : v);
    });
}


// ==== TEST
// TESTING
function TEST_get_game_stage() {
    post("\nget_game_state test\n");
    init();
    [-1, 0, 10, 20, 30, 40, 50, 60, 90, 100, 130, 1000, -1].forEach(function (e) {
        set_played_correct_notes(e);
        post("notes:", e, "stage:", get_game_stage(), "\n");
    });
}

function TEST_indexesFromOrder() {
    //post("\n TEST indexesFromOrder: \n");
    [
        [[1, 2, 3, 4], [4, 1, 2, 3]],
        [[3, 2, 4, 1], [4, 3, 1, 2]],
        [[4, 3, 2, 1], [2, 3, 4, 1]],
        [[1, 2, 1, 2], [2, 1, undefined, undefined]],
        [[3, 1, 2, 1], [3, 1, 1, undefined]],
        [[4, 2, 1, 3], [2, 4, 1, 3]],
        [[3, 4, 3, 4], [undefined, undefined, 4, 3]],
        [[2, 4], [undefined, 4, undefined, 2]],
        [[1, 3, 4], [4, undefined, 1, 3]]
    ].forEach(function (testf) {
        var v = indexesFromOrder(testf[0]);
        var res = v.every(function (a, i) { return a == testf[1][i] });
        post(res ? "ok" : "fail", "in:", testf[0], "out:", v, "expected:", testf[1], "\n")
    });

}

function test_set_random_instrument_order() {
    set_instr_order(
        shuffle([1, 2, 3, 4].filter(function (e) { return e == _previous_instr || Math.random() < 0.5 }))
    );
}

//TEST_get_game_stage(); // ok
//TEST_indexesFromOrder(); // ok
//messnamed("abbc", [1,2,3,4]);