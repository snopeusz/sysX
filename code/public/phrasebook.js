"use strict";
/// <reference path="vexflow.d.ts" />
// phrasebook class
class PhraseBook {
    /**
     *
     * @param instr numer instrumentu (1..4)
     * @param elemID ID elementu HTML w którym będziemy rysować
     * @param w szerokość widoku (px)
     * @param h wysokość widoku (px)
     */
    constructor(instr = 1, elemID = 'vfdiv', w = 950, h = 500) {
        /**
         * Czy instrument jest w stroju B?
         * parametr określający transpozycję CAŁEGO widoku
         */
        this.b_flat_transposition = false;
        /**
         * Klucz dla rysowanych nut. Przy przetwarzaniu każdego głosu ta zmienna
         * przyjmuje wartość dla danego instrumentu; nie reprezentuje stanu obiektu.
         * wartość chwilowa przy generowaniu notacji
         */
        this.clef = "treble";
        /**
         * numer instrumentu, liczone od 1 (aby się zgadzało z danymi)
         * 1: fl, 2: cl, 3: vn, 4: vc
         * atrybut obiektu - na stałe określa dla którego instrumentu rysujemy notację;
         * ma wpływ na przezroczystość notacji i ogólną transpozycję
         */
        this.instr = 1;
        /**
         * numer przetwarzanego instrumentu w partyturze
         */
        this.currently_processed_instrument = 0;
        /**
         * transpozycja oktawowa generowanego aktualnie taktu (ilość oktaw)
         * zmienna wykorzystywana wewntęrznie podczas określania docelowej
         * wysokości nut (wewnątrz metody "create_stavenote").
         * wartość chwilowa przy generowaniu notacji
         */
        this.transp_octaves = 0;
        /**
         * zmienna przechowująca stan transpozycji do a-moll dla wszystkich instrumentów
         * możliwe, że będzie przydatna do dodatkowej wizualizacji
         * (kodowanie kolorami tonacji)
         */
        this.amoll_for_instruments = [false, false, false, false];
        /**
         * aktywna tablica z przypisaniem znaków chromatycznych
         * wartość chwilowa przy generowaniu notacji
         */
        this.pitch_table = PhraseBook.pitch_spelling_table.f;
        // parametery dotyczące rysowania 
        this.factory_width = 0; // szerokość widoku
        this.factory_scale = 0.75; // powiększenie / wielkość notacji
        this.factory_system_x = 15; // poziome miejsce rysowania 5-linii (aby zmieścić skróty instr.)
        this.dynprofile_height = 60; // wysokość profilu dyn. przed przeskalowaniem
        this.only_selectect_instrument = true;
        this.draw_dynprofile = true;
        this.highlight_selected_instrument = true;
        this.highlight_color = ["#e8FaFF", "#FFFFE0"]; // SVG color
        this.dynprofile_color = ["#005060", "#606000"]; // SVG color
        this.fancy_dynprofile_colors = false;
        this.factory = new Vex.Flow.Factory({
            renderer: {
                elementId: elemID,
                width: w,
                height: h
            }
        });
        this.set_instr(instr);
        this.set_amoll(false);
        this.factory_width = w;
    }
    set_amoll(amoll) {
        let key = this.b_flat_transposition ?
            (amoll ? "b" : "g") : (amoll ? "a" : "f");
        this.pitch_table = PhraseBook.pitch_spelling_table[key];
    }
    set_instr(inum) {
        if (inum >= 1 && inum <= 4) {
            this.instr = inum;
            this.b_flat_transposition = (inum == 2);
            this.clef = this.get_clef_for_instrument(inum);
        }
    }
    set_highlight_and_redraw(hi = true) {
        this.highlight_selected_instrument = hi;
        this.redraw_last_score();
    }
    set_score(fromMax) {
        this.one_before_last_score_data = this.last_score_data;
        this.last_score_data = fromMax;
    }
    set_and_draw_score(fromMax) {
        this.one_before_last_score_data = this.last_score_data;
        this.last_score_data = fromMax;
        this.draw_score(fromMax);
    }
    draw_score(fromMax) {
        // this.one_before_last_score_data = this.last_score_data;
        // this.last_score_data = fromMax;
        this.factory_clear();
        this.factory_setup_drawing(fromMax);
        this.factory_do_drawing();
        if (this.draw_dynprofile)
            this.factory_draw_dynprofile(fromMax);
        this.factory_draw_text(fromMax);
    }
    redraw_last_score() {
        let data = this.last_score_data;
        if (data)
            this.draw_score(data);
    }
    redraw_one_before_last_score() {
        let data = this.one_before_last_score_data;
        if (data)
            this.draw_score(data);
    }
    clear() {
        this.factory_clear();
        this.last_score_data = undefined;
        this.one_before_last_score_data = undefined;
    }
    create_stavenote(pch, dur, art) {
        // określamy wysokość nuty biorąc pod uwagę aktualną transpozycję oktawową
        let [pchname, oct] = this.get_pitch_data(pch + (this.transp_octaves * 12));
        let note = this.factory.StaveNote({
            clef: this.clef,
            keys: [`${pchname}/${oct}`],
            duration: dur,
            auto_stem: true
        });
        if (pchname.length > 1)
            note.addAccidental(0, new Vex.Flow.Accidental(pchname.slice(1)));
        // uwaga - powyżej nie korzystam z VF.Factory, ponieważ wymaga obietku z parametrami,
        // gdzie używany jest tylko jeden parametr - "type", który jest dalej przekazywany
        // do konstruktora VF.Accidental; w tym przypadku bez sensu.
        if (art) {
            //TODO: obsługa artykulacji
        }
        return note;
    }
    create_stavenote_chord2(pch1, pch2, dur, art) {
        // określamy wysokość nuty biorąc pod uwagę aktualną transpozycję oktawową
        let [pchname, oct] = this.get_pitch_data(pch1 + (this.transp_octaves * 12));
        let [pchname2, oct2] = this.get_pitch_data(pch2 + (this.transp_octaves * 12));
        let keys = (this.currently_processed_instrument == 3) ?
            [`${pchname}/${oct}`, `${pchname2}/${oct2}`] :
            [`${pchname}/${oct}`];
        let note = this.factory.StaveNote({
            clef: this.clef,
            keys: keys,
            duration: dur,
            auto_stem: true
        });
        if (pchname.length > 1)
            note.addAccidental(0, new Vex.Flow.Accidental(pchname.slice(1)));
        if (this.currently_processed_instrument == 3 && pchname2.length > 1)
            note.addAccidental(1, new Vex.Flow.Accidental(pchname2.slice(1)));
        if (art) {
            //TODO: obsługa artykulacji ,jw
        }
        return note;
    }
    create_stavenote_rest(dur) {
        let rest_pitch;
        if (dur == "1")
            rest_pitch = this.clef == "treble" ? "D/5" : "F/3";
        else
            rest_pitch = this.clef == "treble" ? "B/4" : "D/3";
        return this.factory.StaveNote({ clef: this.clef, keys: [rest_pitch], duration: dur + "r" });
    }
    create_voice(notes) {
        return this.factory.Voice({ time: "8/4" }).setStrict(true).addTickables(notes);
    }
    get_pitch_data(pch) {
        if (this.b_flat_transposition)
            pch = pch + 2;
        if (this.amoll_for_instruments[this.instr - 1])
            pch = pch + 4;
        let pc = pch % 12;
        let oct = pch / 12 | 0; // bitwise_or for integer part
        return [this.pitch_table[pc], (oct - 1).toString()];
    }
    get_clef_for_instrument(inum) {
        return inum == 4 ? "bass" : "treble";
    }
    get_transp12_range(mID) {
        let instr = this.currently_processed_instrument - 1; // odejmujemy 1, ponieważ indeksujemy tablicę od 0, a instrumenty numerujemy od 1
        return PhraseBook.phrasedict_transp12[mID][instr];
    }
    get_measure(measureID, transposition = 0) {
        // ustawiamy transpozycję oktawową dla całego taktu
        let [lo, hi] = this.get_transp12_range(measureID);
        this.transp_octaves = this.math_interp2(transposition, lo, hi);
        // generujemy takt notacji jako tablicę z VF.Note
        return PhraseBook.phrasedict[measureID]
            .map(prop => PhraseBook.gen_motif_table[prop.type].call(this, prop))
            .reduce((a, b) => a.concat(b));
    }
    get_measure_from_mit(mit) {
        if (mit.length == 3)
            return this.get_measure(mit[0] + (100 * mit[1]), mit[2]);
        else
            return [];
    }
    get_voice_from_mit4(mit4) {
        let notes = this.array_group(mit4, 3)
            .map((m) => this.get_measure_from_mit(m));
        for (let i = notes.length - 1; i > 0; i--)
            notes.splice(i, 0, [this.factory.BarNote({})]);
        let flatten_notes = this.array_flatten(notes);
        return this.create_voice(flatten_notes);
    }
    _factory_setup_stave(system, inum, fromMax) {
        let isSelectedInstrument = this.instr == inum;
        if (inum >= 1 && inum <= 4) {
            let mit4 = fromMax[inum].mit4;
            let amoll = fromMax[inum].amoll > 0;
            // ustawiamy stan do generowania notacji wykorzystujące zmienne obiektu
            this.set_amoll(amoll);
            this.amoll_for_instruments[inum - 1] = amoll;
            this.clef = this.get_clef_for_instrument(inum);
            this.currently_processed_instrument = inum;
            // utworzenie pięciolinii i wygenerowanie elementów notacyjnych VF
            let stave = system.addStave({
                voices: [
                    this.get_voice_from_mit4(mit4)
                ],
                spaceAbove: isSelectedInstrument ? 4 : 0,
                spaceBelow: isSelectedInstrument ? 12 : 0,
            }).addClef(this.clef);
            if (isSelectedInstrument)
                this.factory_stave_for_selected_instrument = stave;
            return stave;
        }
        else
            throw new Error("Phrasebook _factory_setup_stave instrument number out of range.");
    }
    factory_setup_drawing(fromMax) {
        this.factory_getContext().scale(this.factory_scale, this.factory_scale);
        let system = this.factory.System({
            x: this.factory_system_x / this.factory_scale,
            y: 20,
            width: (this.factory_width - this.factory_system_x) / this.factory_scale
        });
        // tworzmy elementy notacyjne dla każdego głosu
        for (let i = 1; i <= 4; i++)
            if (!this.only_selectect_instrument || i == this.instr)
                this._factory_setup_stave(system, i, fromMax);
        system.addConnector("singleLeft");
    }
    factory_do_drawing() {
        let context = this.factory_getContext();
        // formatowanie
        this.factory.systems
            .forEach(i => i.setContext(context).format());
        // podświetlenie głównego instrumentu (wykonawcy)
        if (this.highlight_selected_instrument) {
            let stave = this.factory_stave_for_selected_instrument;
            if (stave) {
                let x0 = 0; //this.factory_system_x / this.factory_scale;
                let y0 = stave.getYForLine(-6);
                let h = stave.getYForLine(9) - y0;
                let w = (this.factory_width /* - this.factory_system_x */) / this.factory_scale;
                let amoll = this.amoll_for_instruments[this.instr - 1];
                context.save();
                context.setFillStyle(this.highlight_color[amoll ? 1 : 0]);
                // context.setStrokeStyle("white");
                context.setLineWidth(0);
                context.fillRect(x0, y0, w, h);
                context.restore();
            }
        }
        let svggroups = 
        // rysowanie pięciolinii:
        this.factory.staves.map((s, i) => {
            let svgg = context.openGroup();
            s.setContext(context).draw();
            this.factory.getVoices()
                .filter(v => v.stave === s)
                .forEach(i => i.setContext(context).draw());
            this.factory.renderQ //elementy utworzone przez metody vf-factory 
                .filter(v => v.stave === s ||
                (v.notes && v.notes[0] && v.notes[0].stave === s) || //dla "Beam"
                (v.notes && v.notes.first_note && v.notes.first_note.stave === s) //dla "StaveTie"
            )
                .forEach(i => {
                if (!i.isRendered())
                    i.setContext(context).draw();
            });
            context.closeGroup();
            // ustawienie przezroczystości dla głosów innych niż główny docelowy instrument
            //svgg.style.opacity = ((i + 1 == this.instr || this.only_selectect_instrument) ? 1.0 : 0.4).toString();
            return svgg;
        });
        // rysowanie elementów, które nie mają przypisanej 5-liniii
        // na razie jest tylko krecha przez cały system
        context.save();
        let colorname = "#CCCCCC"; // kolory SVG to co innego niż HTML
        context.setFillStyle(colorname);
        context.setStrokeStyle(colorname);
        this.factory.renderQ //elementy utworzone przez metody vf-factory 
            .filter(e => e.getAttribute("type") == "StaveConnector")
            .forEach(i => {
            if (!i.isRendered())
                i.setContext(context).draw();
        });
        context.restore();
        // rysowanie nazw (skrótów) instrumentów
        context.save();
        if (this.only_selectect_instrument) {
            let s = this.factory_stave_for_selected_instrument;
            let y = s ? s.getYForLine(2) + 3 : 0;
            context.setFillStyle("#000000");
            context.fillText(["fl", "cl", "vn", "vc"][this.instr - 1], 0, y);
        }
        else {
            this.factory.staves.forEach((s, i) => {
                (i + 1 == this.instr ? 1.0 : 0.4).toString();
                context.setFillStyle(i + 1 == this.instr ? "#000000" : "#CCCCCC");
                context.fillText(["fl", "cl", "vn", "vc"][i], 0, s.getYForLine(2) + 3);
            });
        }
        context.restore();
        // właściwie niczego nie rysuje, tylko grafiki do debugowania
        this.factory.systems.forEach(i => i.setContext(context).draw());
        // czyszczenie Factory - usuwanie wszystkich elementów (ponieważ są już narysowane)
        this.factory.reset();
        //return svggroups; // nie musimy zwracać, jeżeli później tego nie animujemy
    }
    factory_getContext() {
        return this.factory.getContext();
    }
    factory_clear() {
        this.factory.reset();
        this.factory_getContext().clear();
    }
    factory_draw_dynprofile(fromMax) {
        // ta metoda jest wywoływana już po narysowaniu notacji muz.
        // zatem możemy sprawdzić położenie każdej pięciolinii.
        let stave = this.factory_stave_for_selected_instrument;
        if (stave) {
            let ctx = this.factory_getContext();
            let dynprofile_name = fromMax[this.instr].dynprofile;
            let dynprofile = PhraseBook.dynprofiles[dynprofile_name] || [];
            let w = (this.factory_width - this.factory_system_x) / this.factory_scale;
            let x0 = this.factory_system_x / this.factory_scale;
            let h = this.dynprofile_height / this.factory_scale;
            let h1 = h * 0.95;
            let y0 = stave.getYForLine(9) + h;
            let amoll = this.amoll_for_instruments[this.instr - 1];
            ctx.save();
            ctx.setFillStyle("#FAFAF5");
            ctx.setStrokeStyle("#555555");
            ctx.fillRect(x0, y0 - h, w, h);
            dynprofile.forEach(segm => {
                let [onset, dur, lvl1, lvl2, accent] = segm;
                let x1 = onset / 4000 * w + x0;
                let x2 = (onset + dur) / 4000 * w + x0 + 1;
                let y1 = y0 - (lvl1 * h * 0.95) - h * 0.05;
                let y2 = y0 - (lvl2 * h * 0.95) - h * 0.05;
                let color_name;
                if (this.fancy_dynprofile_colors) {
                    let hexdest = ((1 - lvl2) * 128).toString(16);
                    color_name = accent ? `#${hexdest}ffff` : `#${hexdest}${hexdest}${hexdest}`;
                }
                else {
                    //color_name = accent ? "red" : "black";
                    color_name = this.dynprofile_color[amoll ? 1 : 0];
                }
                ;
                ctx.beginPath()
                    .moveTo(x1, y0)
                    .lineTo(x1, y1)
                    .lineTo(x2, y2)
                    .lineTo(x2, y0)
                    //.lineTo(x1, y0)
                    .closePath()
                    .fill({ fill: color_name /* accent ? "red" : "black"  */ });
            });
            ctx.restore();
        }
    }
    factory_draw_text(fromMax) {
        let ctx = this.factory_getContext();
        let tempo_string = fromMax.tempo_text;
        let art_string = fromMax.art_text;
        let counter_string = (fromMax.counter_text || "--").toString();
        ctx.save();
        ctx.setFillStyle("black");
        if (tempo_string) {
            ctx.setFont("Times bold", 20);
            ctx.fillText(tempo_string, 0, 25);
        }
        ;
        if (art_string) {
            let tempo_width = ctx.measureText(tempo_string).width;
            ctx.setFont("Times italic", 20);
            ctx.fillText(art_string, tempo_width + (10 / this.factory_scale), 25);
        }
        if (counter_string) {
            ctx.setFont("Times regular", 20);
            let text_width = ctx.measureText(counter_string).width;
            ctx.fillText(counter_string, (this.factory_width - text_width - 10) / this.factory_scale, 25);
        }
        ctx.restore();
    }
    /**
     * Interpolacja liniowa z niezmiennikiem w postaci:
     * jeżeli WE = 0 , to WY = 0.
     */
    math_interp2(x, lo, hi) {
        if (lo <= 0 && hi >= 0) {
            return Math.round(Math.abs(x) * (x <= 0 ? lo : hi));
        }
        else {
            return Math.round((hi - lo) * (x * 0.5 + 0.5) + lo);
        }
    }
    array_group(arr, group_size = 3) {
        return arr
            .reduce((rv, x, i) => (((i % group_size) == 0 ? rv.unshift([]) : null, rv[0]).push(x), rv), [])
            .reverse();
    }
    array_flatten(arr) {
        return arr.reduce((a, b) => a.concat(b), []);
    }
}
PhraseBook.phrasedict = {
    // i*100+m
    101: [
        {
            type: "a",
            pitches: [60],
            art: [],
        }
    ],
    102: [
        {
            type: "b",
            pitches: [60],
            art: ["ten"],
        },
        {
            type: "b",
            pitches: [60],
            art: ["ten"],
        }
    ],
    103: [
        {
            type: "b",
            pitches: [63],
            art: ["ten"],
        },
        {
            type: "b",
            pitches: [61],
            art: ["ten"],
        }
    ],
    104: [
        {
            type: "c",
            pitches: [65, 65],
            art: [],
        },
        {
            type: "c",
            pitches: [65, 65],
            art: [],
        }
    ],
    105: [
        {
            type: "c",
            pitches: [67, 67],
            art: [],
        },
        {
            type: "c",
            pitches: [67, 68],
            art: [],
        }
    ],
    106: [
        {
            type: "d",
            pitches: [65, 60, 65, 68],
            art: [],
        },
        {
            type: "d",
            pitches: [65, 60, 65, 68],
            art: [],
        }
    ],
    107: [
        {
            type: "e",
            pitches: [72],
            art: [],
        },
        {
            type: "e",
            pitches: [72],
            art: [],
        }
    ],
    108: [
        {
            type: "e",
            pitches: [77],
            art: [],
        },
        {
            type: "c",
            pitches: [79, 80],
            art: [],
        }
    ],
    109: [
        {
            type: "f",
            pitches: [77, 84, 84],
            art: ["stacc", "", ""],
        }
    ],
    110: [
        {
            type: "c",
            pitches: [79, 80],
            art: [],
        },
        {
            type: "b",
            pitches: [87],
            art: ["ten"],
        }
    ],
    111: [
        {
            type: "g",
            pitches: [87, 85, 84, 82, 80],
            art: ["stacc", "", "", "", "", ""],
        }
    ],
    112: [
        {
            type: "h",
            pitches: [77, 79, 80],
            art: ["stacc", "ten", "stacc"],
        }
    ],
    113: [
        {
            type: "e",
            pitches: [82],
            art: ["stacc"],
        },
        {
            type: "b",
            pitches: [84],
            art: ["ten"],
        }
    ],
    114: [
        {
            type: "d",
            pitches: [89, 84, 87, 82],
            art: [],
        },
        {
            type: "d",
            pitches: [84, 80, 82, 77],
            art: [],
        }
    ],
    115: [
        {
            type: "d",
            pitches: [72, 79, 77, 82],
            art: [],
        },
        {
            type: "d",
            pitches: [80, 84, 82, 87],
            art: [],
        }
    ],
    116: [
        {
            type: "d",
            pitches: [65, 72, 73, 77],
            art: [],
        },
        {
            type: "d",
            pitches: [79, 80, 84, 89],
            art: [],
        }
    ],
    // ...
    117: [
        {
            type: "i",
            pitches: [72, 79, 80],
            art: [],
        },
        {
            type: "i",
            pitches: [77, 84, 87],
            art: [],
        }
    ],
    118: [
        {
            type: "i",
            pitches: [89, 84, 79],
            art: [],
        },
        {
            type: "i",
            pitches: [80, 77, 73],
            art: [],
        }
    ],
    119: [
        {
            type: "j",
            pitches: [],
            art: [],
        }
    ],
    /// i=2 KLARNET ----------
    201: [
        {
            type: "a",
            pitches: [53],
            art: [],
        }
    ],
    202: [
        {
            type: "a",
            pitches: [51],
            art: [],
        }
    ],
    203: [
        {
            type: "b",
            pitches: [56],
            art: ["ten"],
        },
        {
            type: "b",
            pitches: [58],
            art: ["ten"],
        }
    ],
    204: [
        {
            type: "b",
            pitches: [60],
            art: ["ten"],
        },
        {
            type: "b",
            pitches: [61],
            art: ["ten"],
        }
    ],
    205: [
        {
            type: "d",
            pitches: [65, 60, 65, 60],
            art: [],
        },
        {
            type: "d",
            pitches: [65, 60, 65, 60],
            art: [],
        }
    ],
    206: [
        {
            type: "c",
            pitches: [68, 70],
            art: [],
        },
        {
            type: "c",
            pitches: [67, 68],
            art: [],
        }
    ],
    207: [
        {
            type: "e",
            pitches: [65],
            art: [],
        },
        {
            type: "e",
            pitches: [65],
            art: [],
        }
    ],
    208: [
        {
            type: "e",
            pitches: [53],
            art: [],
        },
        {
            type: "c",
            pitches: [55, 56],
            art: [],
        }
    ],
    209: [
        {
            type: "f",
            pitches: [72, 77, 77],
            art: ["stacc", "", ""],
        }
    ],
    210: [
        {
            type: "f",
            pitches: [84, 82, 82],
            art: ["stacc", "", ""],
        }
    ],
    211: [
        {
            type: "g",
            pitches: [72, 77, 75, 77, 79],
            art: ["stacc", "", "", "", "", ""],
        }
    ],
    212: [
        {
            type: "c",
            pitches: [80, 75],
            art: ["stacc", "stacc"],
        },
        {
            type: "b",
            pitches: [77],
            art: ["ten"],
        }
    ],
    213: [
        {
            type: "e",
            pitches: [70],
            art: ["stacc"],
        },
        {
            type: "b",
            pitches: [72],
            art: ["ten"],
        }
    ],
    214: [
        {
            type: "d",
            pitches: [84, 80, 82, 79],
            art: [],
        },
        {
            type: "d",
            pitches: [80, 77, 79, 72],
            art: [],
        }
    ],
    215: [
        {
            type: "d",
            pitches: [65, 72, 70, 73],
            art: [],
        },
        {
            type: "d",
            pitches: [77, 80, 79, 82],
            art: [],
        }
    ],
    216: [
        {
            type: "d",
            pitches: [53, 65, 68, 70],
            art: [],
        },
        {
            type: "d",
            pitches: [75, 77, 79, 80],
            art: [],
        }
    ],
    217: [
        {
            type: "i",
            pitches: [65, 72, 75],
            art: [],
        },
        {
            type: "i",
            pitches: [73, 79, 82],
            art: [],
        }
    ],
    218: [
        {
            type: "i",
            pitches: [84, 80, 77],
            art: [],
        },
        {
            type: "i",
            pitches: [75, 73, 72],
            art: [],
        }
    ],
    219: [
        {
            type: "j",
            pitches: [],
            art: [],
        }
    ],
    // instr = 3 SKRZYPCE
    301: [
        {
            type: "c",
            pitches: [55, 55],
            art: [],
        },
        {
            type: "c",
            pitches: [55, 56],
            art: [],
        }
    ],
    302: [
        {
            type: "c",
            pitches: [58, 58],
            art: [],
        },
        {
            type: "c",
            pitches: [58, 60],
            art: [],
        }
    ],
    303: [
        {
            type: "d",
            pitches: [65, 65, 65, 65],
            art: [],
        },
        {
            type: "d",
            pitches: [65, 65, 65, 65],
            art: [],
        }
    ],
    304: [
        {
            type: "d",
            pitches: [67, 67, 67, 67],
            art: [],
        },
        {
            type: "d",
            pitches: [67, 67, 68, 68],
            art: [],
        }
    ],
    305: [
        {
            type: "c2",
            pitches: [67, 67, 72, 72],
            art: [],
        },
        {
            type: "c2",
            pitches: [67, 68, 72, 72],
            art: [],
        }
    ],
    306: [
        {
            type: "d",
            pitches: [73, 72, 73, 72],
            art: [],
        },
        {
            type: "d",
            pitches: [73, 72, 73, 72],
            art: [],
        }
    ],
    307: [
        {
            type: "e",
            pitches: [68],
            art: [],
        },
        {
            type: "e",
            pitches: [68],
            art: [],
        }
    ],
    308: [
        {
            type: "e",
            pitches: [65],
            art: [],
        },
        {
            type: "c",
            pitches: [67, 68],
            art: [],
        }
    ],
    309: [
        {
            type: "f",
            pitches: [67, 68, 68],
            art: ["stacc"],
        }
    ],
    310: [
        {
            type: "f",
            pitches: [80, 77, 77],
            art: ["stacc"],
        }
    ],
    311: [
        {
            type: "g",
            pitches: [77, 72, 75, 73, 72],
            art: ["stacc", "", "", "", "", ""],
        }
    ],
    312: [
        {
            type: "h",
            pitches: [72, 70, 72],
            art: ["stacc", "ten", "stacc"],
        }
    ],
    313: [
        {
            type: "e",
            pitches: [58],
            art: ["stacc"],
        },
        {
            type: "b",
            pitches: [60],
            art: ["ten"],
        }
    ],
    314: [
        {
            type: "d",
            pitches: [80, 77, 79, 75],
            art: [],
        },
        {
            type: "d",
            pitches: [77, 72, 73, 70],
            art: [],
        }
    ],
    315: [
        {
            type: "d",
            pitches: [68, 75, 72, 77],
            art: [],
        },
        {
            type: "d",
            pitches: [72, 75, 77, 79],
            art: [],
        }
    ],
    316: [
        {
            type: "d",
            pitches: [60, 68, 77, 80],
            art: [],
        },
        {
            type: "d",
            pitches: [79, 77, 68, 60],
            art: [],
        }
    ],
    317: [
        {
            type: "i",
            pitches: [56, 65, 72],
            art: [],
        },
        {
            type: "i",
            pitches: [70, 75, 79],
            art: [],
        }
    ],
    318: [
        {
            type: "i",
            pitches: [80, 77, 75],
            art: [],
        },
        {
            type: "i",
            pitches: [73, 72, 65],
            art: [],
        }
    ],
    319: [
        {
            type: "j",
            pitches: [],
            art: [],
        }
    ],
    // instr = 4 wiolonczela
    401: [
        {
            type: "a",
            pitches: [41],
            art: [],
        }
    ],
    402: [
        {
            type: "b",
            pitches: [41],
            art: [],
        },
        {
            type: "br",
            pitches: [],
            art: [],
        }
    ],
    403: [
        {
            type: "b",
            pitches: [41],
            art: ["ten"],
        },
        {
            type: "e",
            pitches: [36],
            art: [],
        }
    ],
    404: [
        {
            type: "b",
            pitches: [41],
            art: ["stacc"],
        },
        {
            type: "b",
            pitches: [41],
            art: ["stacc"],
        }
    ],
    405: [
        {
            type: "b",
            pitches: [41],
            art: ["ten"],
        },
        {
            type: "c",
            pitches: [36, 48],
            art: ["stacc", "stacc"],
        }
    ],
    406: [
        {
            type: "b",
            pitches: [41],
            art: ["ten"],
        },
        {
            type: "e",
            pitches: [53],
            art: [],
        }
    ],
    407: [
        {
            type: "e",
            pitches: [63],
            art: [],
        },
        {
            type: "e",
            pitches: [61],
            art: [],
        }
    ],
    408: [
        {
            type: "e",
            pitches: [41],
            art: [],
        },
        {
            type: "c",
            pitches: [43, 44],
            art: [],
        }
    ],
    409: [
        {
            type: "f",
            pitches: [65, 53, 53],
            art: ["stacc", "", ""],
        }
    ],
    410: [
        {
            type: "f",
            pitches: [53, 56, 56],
            art: ["stacc", "", ""],
        }
    ],
    411: [
        {
            type: "g",
            pitches: [56, 58, 55, 56, 58],
            art: ["stacc", "", "", "", "", ""],
        }
    ],
    412: [
        {
            type: "h",
            pitches: [53, 51, 49],
            art: ["stacc", "", "stacc"],
        }
    ],
    413: [
        {
            type: "e",
            pitches: [46],
            art: ["stacc"],
        },
        {
            type: "b",
            pitches: [48],
            art: ["ten"],
        }
    ],
    414: [
        {
            type: "d",
            pitches: [65, 61, 63, 60],
            art: [],
        },
        {
            type: "d",
            pitches: [61, 58, 53, 55],
            art: [],
        }
    ],
    415: [
        {
            type: "d",
            pitches: [53, 56, 55, 58],
            art: [],
        },
        {
            type: "d",
            pitches: [60, 63, 61, 65],
            art: [],
        }
    ],
    416: [
        {
            type: "d",
            pitches: [41, 48, 53, 58],
            art: [],
        },
        {
            type: "d",
            pitches: [56, 53, 48, 41],
            art: [],
        }
    ],
    417: [
        {
            type: "i",
            pitches: [41, 48, 55],
            art: [],
        },
        {
            type: "i",
            pitches: [56, 58, 60],
            art: [],
        }
    ],
    418: [
        {
            type: "i",
            pitches: [61, 49, 48],
            art: [],
        },
        {
            type: "i",
            pitches: [46, 44, 41],
            art: [],
        }
    ],
    419: [
        {
            type: "j",
            pitches: [],
            art: [],
        }
    ],
};
PhraseBook.phrasedict_transp12 = {
    101: [[0, 2], [0, 2], [0, 2], [-2, 1]],
    102: [[0, 2], [0, 2], [0, 2], [-2, 1]],
    103: [[0, 2], [0, 1], [0, 2], [-2, 0]],
    104: [[0, 2], [-1, 1], [0, 2], [-2, 0]],
    105: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    106: [[0, 1], [0, 1], [0, 1], [-2, 0]],
    107: [[-1, 1], [-1, 1], [-1, 1], [-3, 0]],
    108: [[-1, 0], [-2, 0], [-1, 0], [-3, -1]],
    109: [[-1, 0], [-2, 0], [-1, 0], [-3, -1]],
    110: [[-1, 0], [-2, -1], [-2, 0], [-3, -2]],
    111: [[-1, 0], [-2, -1], [-2, 0], [-3, -2]],
    112: [[-1, 0], [-2, 0], [-1, 0], [-3, -1]],
    113: [[-1, 0], [-2, 0], [-2, 0], [-3, -1]],
    114: [[-1, 0], [-2, -1], [-1, 0], [-3, -2]],
    115: [[-1, 0], [-1, -1], [-1, 0], [-3, -2]],
    116: [[0, 0], [-1, -1], [0, 0], [-2, -2]],
    117: [[-1, 0], [-1, -1], [-1, 0], [-3, -2]],
    118: [[-1, 0], [-1, -1], [-1, 0], [-3, -2]],
    119: [[-5, 7], [-6, 7], [-6, 7], [-7, 6]],
    201: [[1, 3], [0, 2], [1, 3], [-1, 1]],
    202: [[1, 3], [0, 2], [1, 3], [-1, 1]],
    203: [[1, 2], [0, 2], [0, 2], [-1, 1]],
    204: [[0, 2], [0, 2], [0, 2], [-2, 1]],
    205: [[0, 2], [0, 1], [0, 2], [-2, 0]],
    206: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    207: [[0, 2], [-1, 1], [0, 2], [-2, 0]],
    208: [[1, 2], [0, 2], [1, 2], [-1, 1]],
    209: [[-1, 1], [-1, 0], [-1, 1], [-3, -1]],
    210: [[-1, 0], [-2, 0], [-2, 0], [-3, -1]],
    211: [[-1, 1], [-1, 0], [-1, 1], [-3, -1]],
    212: [[-1, 0], [-2, 0], [-1, 0], [-3, -1]],
    213: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    214: [[-1, 0], [-1, 0], [-1, 0], [-3, -1]],
    215: [[0, 0], [-1, 0], [0, 0], [-2, -1]],
    216: [[1, 1], [0, 0], [1, 1], [-1, -1]],
    217: [[0, 0], [-1, 0], [0, 0], [-2, -1]],
    218: [[-1, 0], [-1, 0], [-1, 0], [-3, -1]],
    219: [[-5, 7], [-6, 7], [-6, 7], [-7, 6]],
    301: [[1, 2], [0, 2], [0, 2], [-1, 1]],
    302: [[1, 2], [0, 2], [0, 2], [-1, 1]],
    303: [[0, 2], [-1, 1], [0, 2], [-2, 0]],
    304: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    305: [[0, 1], [0, 1], [0, 1], [-2, 0]],
    306: [[-1, 1], [-1, 1], [-1, 1], [-3, 0]],
    307: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    308: [[0, 1], [-1, 1], [0, 1], [-2, 0]],
    309: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    310: [[-1, 0], [-2, 0], [-1, 0], [-3, -1]],
    311: [[-1, 1], [-1, 0], [-1, 1], [-3, -1]],
    312: [[0, 1], [-1, 1], [-1, 1], [-2, 0]],
    313: [[1, 2], [0, 2], [0, 2], [-1, 1]],
    314: [[0, 0], [-1, 0], [-1, 0], [-2, -1]],
    315: [[0, 1], [-1, 0], [-1, 1], [-2, -1]],
    316: [[0, 0], [0, 0], [0, 0], [-2, -1]],
    317: [[1, 1], [0, 0], [0, 1], [-1, -1]],
    318: [[0, 0], [-1, 0], [0, 0], [-2, -1]],
    319: [[-5, 7], [-6, 7], [-6, 7], [-7, 6]],
    401: [[2, 4], [1, 3], [2, 4], [0, 2]],
    402: [[2, 4], [1, 3], [2, 4], [0, 2]],
    403: [[2, 4], [2, 3], [2, 4], [0, 2]],
    404: [[2, 4], [1, 3], [2, 4], [0, 2]],
    405: [[2, 3], [2, 3], [2, 3], [0, 2]],
    406: [[2, 3], [1, 2], [2, 3], [0, 1]],
    407: [[0, 2], [0, 1], [0, 2], [-2, 0]],
    408: [[2, 3], [1, 3], [2, 3], [0, 2]],
    409: [[1, 2], [0, 1], [1, 2], [-1, 0]],
    410: [[1, 2], [0, 2], [1, 2], [-1, 1]],
    411: [[1, 2], [0, 2], [0, 2], [-1, 1]],
    412: [[1, 3], [1, 2], [1, 3], [-1, 1]],
    413: [[2, 3], [1, 3], [1, 3], [0, 2]],
    414: [[1, 2], [0, 1], [1, 2], [-1, 0]],
    415: [[1, 2], [0, 1], [1, 2], [-1, 0]],
    416: [[2, 2], [1, 2], [2, 2], [0, 1]],
    417: [[2, 2], [1, 2], [2, 2], [0, 1]],
    418: [[2, 2], [1, 2], [2, 2], [0, 1]],
    419: [[-5, 7], [-6, 7], [-6, 7], [-7, 6]]
};
PhraseBook.pitch_spelling_table = {
    f: ["C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B"],
    a: ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "Bb", "B"],
    g: ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "Ab", "A", "Bb", "B"],
    b: ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
};
PhraseBook.gen_motif_table = {
    "a": function (params) {
        let note = this.create_stavenote(params.pitches[0], "2", params.art && params.art[0]);
        return [note];
    },
    "b": function (params) {
        let note = this.create_stavenote(params.pitches[0], "4", params.art && params.art[0]);
        return [note];
    },
    "c": function (params) {
        let note1 = this.create_stavenote(params.pitches[0], "8", params.art && params.art[0]);
        let note2 = this.create_stavenote(params.pitches[1], "8", params.art && params.art[1]);
        let m = [note1, note2];
        this.factory.Beam({ notes: m, options: { autoStem: true } });
        return m;
    },
    "c2": function (params) {
        let note1 = this.create_stavenote_chord2(params.pitches[0], params.pitches[2], "8", params.art && params.art[0]);
        let note2 = this.create_stavenote_chord2(params.pitches[1], params.pitches[3], "8", params.art && params.art[1]);
        let m = [note1, note2];
        this.factory.Beam({ notes: m, options: { autoStem: true } });
        return m;
    },
    "d": function (params) {
        let m = params.pitches.map((p, i) => this.create_stavenote(p, "16", params.art && params.art[i]));
        this.factory.Beam({ notes: m, options: { autoStem: true } });
        return m;
    },
    "e": function (params) {
        let note1 = this.create_stavenote_rest("8");
        let note2 = this.create_stavenote(params.pitches[0], "8", params.art && params.art[0]);
        let m = [note1, note2];
        return m;
    },
    "f": function (params) {
        let note1 = this.create_stavenote(params.pitches[0], "8", params.art && params.art[0]);
        let note2 = this.create_stavenote(params.pitches[1], "8", params.art && params.art[1]);
        let note3 = this.create_stavenote(params.pitches[1], "4" /* params.art && params.art[1] */);
        let m = [note1, note2, note3];
        this.factory.Beam({ notes: [note1, note2], options: { autoStem: true } });
        this.factory.StaveTie({ from: note2, to: note3 });
        return m;
    },
    "g": function (params) {
        let m = [
            this.create_stavenote(params.pitches[0], "8", params.art && params.art[0]),
            this.create_stavenote(params.pitches[1], "8", params.art && params.art[1]),
            this.create_stavenote(params.pitches[1], "16" /* , params.art && params.art[1] */),
            this.create_stavenote(params.pitches[2], "16", params.art && params.art[2]),
            this.create_stavenote(params.pitches[3], "16", params.art && params.art[2]),
            this.create_stavenote(params.pitches[4], "16", params.art && params.art[2])
        ];
        this.factory.Beam({ notes: m.slice(0, 2), options: { autoStem: true } });
        this.factory.Beam({ notes: m.slice(2, 6), options: { autoStem: true } });
        this.factory.StaveTie({ from: m[1], to: m[2] });
        return m;
    },
    "h": function (params) {
        let note1 = this.create_stavenote(params.pitches[0], "8", params.art && params.art[0]);
        let note2 = this.create_stavenote(params.pitches[1], "4", params.art && params.art[1]);
        let note3 = this.create_stavenote(params.pitches[2], "8", params.art && params.art[2]);
        return [note1, note2, note3];
    },
    "i": function (params) {
        let m = params.pitches.map((p, i) => this.create_stavenote(p, "8", params.art && params.art[i]));
        this.factory.Beam({ notes: m, options: { autoStem: true } });
        this.factory.Tuplet({ notes: m, options: { num_notes: 3, notes_occupied: 2 } });
        return m;
    },
    "j": function (params) {
        return [this.create_stavenote_rest("2")];
    },
    "br": function (params) {
        return [this.create_stavenote_rest("4")];
    },
};
PhraseBook.dynprofiles = {
    "cresc": [[0, 4000, 0, 1, 0]],
    "dim": [[0, 4000, 1, 0, 0]],
    "crescdim": [[0, 2000, 0, 1, 0], [2000, 2000, 1, 0, 0]],
    "dimcresc": [[0, 2000, 1, 0, 0], [2000, 2000, 0, 1, 0]],
    "dimcresc2": [[0, 1000, 1, 0, 0], [1000, 1000, 0, 1, 0], [2000, 1000, 1, 0, 0], [3000, 1000, 0, 1, 0]],
    "dimcresc4": [[0, 500, 1, 0, 0], [500, 500, 0, 1, 0], [1000, 500, 1, 0, 0], [1500, 500, 0, 1, 0], [2000, 500, 1, 0, 0], [2500, 500, 0, 1, 0], [3000, 500, 1, 0, 0], [3500, 500, 0, 1, 0]],
    "crescdim2": [[0, 1000, 0, 1, 0], [1000, 1000, 1, 0, 0], [2000, 1000, 0, 1, 0], [3000, 1000, 1, 0, 0]],
    "crescdim4": [[0, 500, 0, 1, 0], [500, 500, 1, 0, 0], [1000, 500, 0, 1, 0], [1500, 500, 1, 0, 0], [2000, 500, 0, 1, 0], [2500, 500, 1, 0, 0], [3000, 500, 0, 1, 0], [3500, 500, 1, 0, 0]],
    "cresc2": [[0, 2000, 0, 1, 0], [2000, 2000, 0, 1, 0]],
    "dim2": [[0, 2000, 1, 0, 0], [2000, 2000, 1, 0, 0]],
    "rand1": [[0, 125, 1, 1, 0], [125, 125, 0, 0, 0], [250, 125, 0, 0, 0], [375, 125, 1, 1, 0], [500, 125, 1, 1, 0], [625, 125, 0, 0, 0], [750, 125, 1, 1, 0], [875, 125, 0, 0, 0], [1000, 125, 1, 1, 0], [1125, 125, 1, 1, 0], [1250, 125, 1, 1, 0], [1375, 125, 1, 1, 0], [1500, 125, 1, 1, 0], [1625, 125, 1, 1, 0], [1750, 125, 0, 0, 0], [1875, 125, 1, 1, 0], [2000, 125, 1, 1, 0], [2125, 125, 0, 0, 0], [2250, 125, 1, 1, 0], [2375, 125, 0, 0, 0], [2500, 125, 1, 1, 0], [2625, 125, 0, 0, 0], [2750, 125, 1, 1, 0], [2875, 125, 1, 1, 0], [3000, 125, 1, 1, 0], [3125, 125, 0, 0, 0], [3250, 125, 0, 0, 0], [3375, 125, 0, 0, 0], [3500, 125, 1, 1, 0], [3625, 125, 1, 1, 0], [3750, 125, 1, 1, 0], [3875, 125, 1, 1, 0]],
    "rand2": [[0, 125, 0, 0, 0], [125, 125, 1, 1, 0], [250, 125, 1, 1, 0], [375, 125, 1, 1, 0], [500, 125, 1, 1, 0], [625, 125, 0, 0, 0], [750, 125, 1, 1, 0], [875, 125, 0, 0, 0], [1000, 125, 0, 0, 0], [1125, 125, 0, 0, 0], [1250, 125, 1, 1, 0], [1375, 125, 0, 0, 0], [1500, 125, 0, 0, 0], [1625, 125, 0, 0, 0], [1750, 125, 0, 0, 0], [1875, 125, 1, 1, 0], [2000, 125, 0, 0, 0], [2125, 125, 1, 1, 0], [2250, 125, 1, 1, 0], [2375, 125, 0, 0, 0], [2500, 125, 0, 0, 0], [2625, 125, 0, 0, 0], [2750, 125, 0, 0, 0], [2875, 125, 0, 0, 0], [3000, 125, 0, 0, 0], [3125, 125, 0, 0, 0], [3250, 125, 0, 0, 0], [3375, 125, 1, 1, 0], [3500, 125, 0, 0, 0], [3625, 125, 1, 1, 0], [3750, 125, 0, 0, 0], [3875, 125, 0, 0, 0]],
    "rand3": [[0, 125, 0, 0.75, 0], [125, 125, 0.75, 0.75, 0], [250, 125, 0.75, 0, 0], [375, 125, 0, 0.5, 0], [500, 125, 0.5, 0.25, 0], [625, 125, 0.25, 0, 0], [750, 125, 0, 0.75, 0], [875, 125, 0.75, 1, 0], [1000, 125, 1, 0.25, 0], [1125, 125, 0.25, 0.75, 0], [1250, 125, 0.75, 0.75, 0], [1375, 125, 0.75, 0.5, 0], [1500, 125, 0.5, 1, 0], [1625, 125, 1, 0.25, 0], [1750, 125, 0.25, 0, 0], [1875, 125, 0, 0, 0], [2000, 125, 0, 1, 0], [2125, 125, 1, 0, 0], [2250, 125, 0, 0.75, 0], [2375, 125, 0.75, 0.75, 0], [2500, 125, 0.75, 0, 0], [2625, 125, 0, 0.5, 0], [2750, 125, 0.5, 0.5, 0], [2875, 125, 0.5, 0, 0], [3000, 125, 0, 0.5, 0], [3125, 125, 0.5, 0.25, 0], [3250, 125, 0.25, 0.75, 0], [3375, 125, 0.75, 0.25, 0], [3500, 125, 0.25, 0.25, 0], [3625, 125, 0.25, 1, 0], [3750, 125, 1, 0, 0], [3875, 125, 0, 0.5, 0]],
    "rand4": [[0, 125, 0, 0, 0], [125, 125, 0, 0.25, 0], [250, 125, 0.25, 1, 0], [375, 125, 1, 0.75, 0], [500, 125, 0.75, 0.25, 0], [625, 125, 0.25, 0.5, 0], [750, 125, 0.5, 1, 0], [875, 125, 1, 0, 0], [1000, 125, 0, 0, 0], [1125, 125, 0, 1, 0], [1250, 125, 1, 0, 0], [1375, 125, 0, 0.75, 0], [1500, 125, 0.75, 0.5, 0], [1625, 125, 0.5, 0.25, 0], [1750, 125, 0.25, 0.5, 0], [1875, 125, 0.5, 0.25, 0], [2000, 125, 0.25, 0.75, 0], [2125, 125, 0.75, 0, 0], [2250, 125, 0, 0.5, 0], [2375, 125, 0.5, 0.25, 0], [2500, 125, 0.25, 0, 0], [2625, 125, 0, 0.75, 0], [2750, 125, 0.75, 1, 0], [2875, 125, 1, 1, 0], [3000, 125, 1, 0.5, 0], [3125, 125, 0.5, 0.25, 0], [3250, 125, 0.25, 0.5, 0], [3375, 125, 0.5, 0.25, 0], [3500, 125, 0.25, 0.25, 0], [3625, 125, 0.25, 0.5, 0], [3750, 125, 0.5, 0.25, 0], [3875, 125, 0.25, 1, 0]],
    "rand5": [[0, 250, 0, 1, 0], [250, 250, 1, 0, 0], [500, 250, 0, 0.5, 0], [750, 250, 0.5, 1, 0], [1000, 250, 1, 0.5, 0], [1250, 250, 0.5, 0, 0], [1500, 250, 0, 1, 0], [1750, 250, 1, 0.5, 0], [2000, 250, 0.5, 0.5, 0], [2250, 250, 0.5, 0, 0], [2500, 250, 0, 0, 0], [2750, 250, 0, 1, 0], [3000, 250, 1, 1, 0], [3250, 250, 1, 1, 0], [3500, 250, 1, 1, 0], [3750, 250, 1, 0, 0]],
    "rand6": [[0, 250, 0, 0, 0], [250, 250, 0, 0, 0], [500, 250, 0, 0.5, 0], [750, 250, 0.5, 1, 0], [1000, 250, 1, 0.5, 0], [1250, 250, 0.5, 0, 0], [1500, 250, 0, 1, 0], [1750, 250, 1, 1, 0], [2000, 250, 1, 0, 0], [2250, 250, 0, 1, 0], [2500, 250, 1, 0, 0], [2750, 250, 0, 0.5, 0], [3000, 250, 0.5, 0, 0], [3250, 250, 0, 0.5, 0], [3500, 250, 0.5, 0.5, 0], [3750, 250, 0.5, 0.5, 0]],
    "pp": [[0, 4000, 0, 0, 0]],
    "p": [[0, 4000, 0.25, 0.25, 0]],
    "mf": [[0, 4000, 0.5, 0.5, 0]],
    "f": [[0, 4000, 0.75, 0.75, 0]],
    "ff": [[0, 4000, 1, 1, 0]],
    "ff+": [[0, 4000, 1, 1, 1]],
    "fpfp": [[0, 1000, 1, 1, 0], [1000, 1000, 0, 0, 0], [2000, 1000, 1, 1, 0], [3000, 1000, 0, 0, 0], [4000, 1000, 1, 1, 0], [5000, 1000, 0, 0, 0], [6000, 1000, 1, 1, 0], [7000, 1000, 0, 0, 0]],
    "pfpf": [[0, 1000, 0, 0, 0], [1000, 1000, 1, 1, 0], [2000, 1000, 0, 0, 0], [3000, 1000, 1, 1, 0], [4000, 1000, 0, 0, 0], [5000, 1000, 1, 1, 0], [6000, 1000, 0, 0, 0], [7000, 1000, 1, 1, 0]],
    "pf": [[0, 2000, 0, 0, 0], [2000, 2000, 1, 1, 0]],
    "fp": [[0, 2000, 1, 1, 0], [2000, 2000, 0, 0, 0]],
    "rand1inv": [[0, 125, 0, 0, 0], [125, 125, 1, 1, 0], [250, 125, 1, 1, 0], [375, 125, 0, 0, 0], [500, 125, 0, 0, 0], [625, 125, 1, 1, 0], [750, 125, 0, 0, 0], [875, 125, 1, 1, 0], [1000, 125, 0, 0, 0], [1125, 125, 0, 0, 0], [1250, 125, 0, 0, 0], [1375, 125, 0, 0, 0], [1500, 125, 0, 0, 0], [1625, 125, 0, 0, 0], [1750, 125, 1, 1, 0], [1875, 125, 0, 0, 0], [2000, 125, 0, 0, 0], [2125, 125, 1, 1, 0], [2250, 125, 0, 0, 0], [2375, 125, 1, 1, 0], [2500, 125, 0, 0, 0], [2625, 125, 1, 1, 0], [2750, 125, 0, 0, 0], [2875, 125, 0, 0, 0], [3000, 125, 0, 0, 0], [3125, 125, 1, 1, 0], [3250, 125, 1, 1, 0], [3375, 125, 1, 1, 0], [3500, 125, 0, 0, 0], [3625, 125, 0, 0, 0], [3750, 125, 0, 0, 0], [3875, 125, 0, 0, 0]],
    "rand2inv": [[0, 125, 1, 1, 0], [125, 125, 0, 0, 0], [250, 125, 0, 0, 0], [375, 125, 0, 0, 0], [500, 125, 0, 0, 0], [625, 125, 1, 1, 0], [750, 125, 0, 0, 0], [875, 125, 1, 1, 0], [1000, 125, 1, 1, 0], [1125, 125, 1, 1, 0], [1250, 125, 0, 0, 0], [1375, 125, 1, 1, 0], [1500, 125, 1, 1, 0], [1625, 125, 1, 1, 0], [1750, 125, 1, 1, 0], [1875, 125, 0, 0, 0], [2000, 125, 1, 1, 0], [2125, 125, 0, 0, 0], [2250, 125, 0, 0, 0], [2375, 125, 1, 1, 0], [2500, 125, 1, 1, 0], [2625, 125, 1, 1, 0], [2750, 125, 1, 1, 0], [2875, 125, 1, 1, 0], [3000, 125, 1, 1, 0], [3125, 125, 1, 1, 0], [3250, 125, 1, 1, 0], [3375, 125, 0, 0, 0], [3500, 125, 1, 1, 0], [3625, 125, 0, 0, 0], [3750, 125, 1, 1, 0], [3875, 125, 1, 1, 0]],
    "rand3inv": [[0, 125, 1, 0.25, 0], [125, 125, 0.25, 0.25, 0], [250, 125, 0.25, 1, 0], [375, 125, 1, 0.5, 0], [500, 125, 0.5, 0.75, 0], [625, 125, 0.75, 1, 0], [750, 125, 1, 0.25, 0], [875, 125, 0.25, 0, 0], [1000, 125, 0, 0.75, 0], [1125, 125, 0.75, 0.25, 0], [1250, 125, 0.25, 0.25, 0], [1375, 125, 0.25, 0.5, 0], [1500, 125, 0.5, 0, 0], [1625, 125, 0, 0.75, 0], [1750, 125, 0.75, 1, 0], [1875, 125, 1, 1, 0], [2000, 125, 1, 0, 0], [2125, 125, 0, 1, 0], [2250, 125, 1, 0.25, 0], [2375, 125, 0.25, 0.25, 0], [2500, 125, 0.25, 1, 0], [2625, 125, 1, 0.5, 0], [2750, 125, 0.5, 0.5, 0], [2875, 125, 0.5, 1, 0], [3000, 125, 1, 0.5, 0], [3125, 125, 0.5, 0.75, 0], [3250, 125, 0.75, 0.25, 0], [3375, 125, 0.25, 0.75, 0], [3500, 125, 0.75, 0.75, 0], [3625, 125, 0.75, 0, 0], [3750, 125, 0, 1, 0], [3875, 125, 1, 0.5, 0]],
    "rand4inv": [[0, 125, 1, 1, 0], [125, 125, 1, 0.75, 0], [250, 125, 0.75, 0, 0], [375, 125, 0, 0.25, 0], [500, 125, 0.25, 0.75, 0], [625, 125, 0.75, 0.5, 0], [750, 125, 0.5, 0, 0], [875, 125, 0, 1, 0], [1000, 125, 1, 1, 0], [1125, 125, 1, 0, 0], [1250, 125, 0, 1, 0], [1375, 125, 1, 0.25, 0], [1500, 125, 0.25, 0.5, 0], [1625, 125, 0.5, 0.75, 0], [1750, 125, 0.75, 0.5, 0], [1875, 125, 0.5, 0.75, 0], [2000, 125, 0.75, 0.25, 0], [2125, 125, 0.25, 1, 0], [2250, 125, 1, 0.5, 0], [2375, 125, 0.5, 0.75, 0], [2500, 125, 0.75, 1, 0], [2625, 125, 1, 0.25, 0], [2750, 125, 0.25, 0, 0], [2875, 125, 0, 0, 0], [3000, 125, 0, 0.5, 0], [3125, 125, 0.5, 0.75, 0], [3250, 125, 0.75, 0.5, 0], [3375, 125, 0.5, 0.75, 0], [3500, 125, 0.75, 0.75, 0], [3625, 125, 0.75, 0.5, 0], [3750, 125, 0.5, 0.75, 0], [3875, 125, 0.75, 0, 0]],
    "rand5inv": [[0, 250, 1, 0, 0], [250, 250, 0, 1, 0], [500, 250, 1, 0.5, 0], [750, 250, 0.5, 0, 0], [1000, 250, 0, 0.5, 0], [1250, 250, 0.5, 1, 0], [1500, 250, 1, 0, 0], [1750, 250, 0, 0.5, 0], [2000, 250, 0.5, 0.5, 0], [2250, 250, 0.5, 1, 0], [2500, 250, 1, 1, 0], [2750, 250, 1, 0, 0], [3000, 250, 0, 0, 0], [3250, 250, 0, 0, 0], [3500, 250, 0, 0, 0], [3750, 250, 0, 1, 0]],
    "rand6inv": [[0, 250, 1, 1, 0], [250, 250, 1, 1, 0], [500, 250, 1, 0.5, 0], [750, 250, 0.5, 0, 0], [1000, 250, 0, 0.5, 0], [1250, 250, 0.5, 1, 0], [1500, 250, 1, 0, 0], [1750, 250, 0, 0, 0], [2000, 250, 0, 1, 0], [2250, 250, 1, 0, 0], [2500, 250, 0, 1, 0], [2750, 250, 1, 0.5, 0], [3000, 250, 0.5, 1, 0], [3250, 250, 1, 0.5, 0], [3500, 250, 0.5, 0.5, 0], [3750, 250, 0.5, 0.5, 0]]
};
//# sourceMappingURL=phrasebook.js.map