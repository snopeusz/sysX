"use strict";
/// <reference path="sysxview.ts" />
//let VF = Vex.Flow;
class SXVInstant extends SysXView {
    constructor() {
        super(...arguments);
        this.b_flat_transposition = false;
        // properties of drawn notation
        this.clef = "treble";
        this.noteduration = "w";
    }
    createDOMElements() {
        this.div.classList.remove("centered");
        this.div.classList.add("centered2");
        this.notespan = document.createElement("span");
        this.div.appendChild(this.notespan);
        this.vfr = new Vex.Flow.Renderer(this.notespan, 3 /* SVG */);
        this.vfr.resize(250, 300);
    }
    // wywoływane przy nawiązaniu połączenia – wtedy wiemy jaki instrument obsługujemy
    initializeView(instr) {
        let clef = SXVInstant.instr_clef[instr] || "treble";
        this.b_flat_transposition = instr == "2";
        this.clef = clef;
        this.vfc = this.vfr.getContext();
        this.vfc.scale(1.5, 1.5);
        this.vfc.clear();
        // 5-linia
        this.tick = new Vex.Flow.TickContext();
        this.staff = new Vex.Flow.Stave(0, 30, 100); //x,y,width
        this.staff.addClef(clef).setContext(this.vfc).draw();
        // dynamika
        let ctx = this.vfc;
        let x = 110;
        let h = 0;
        let y = 150; // <-- max wysokość słupka == 150
        let w = 25;
        ctx.save();
        let gr = ctx.openGroup("", "insta-dyn");
        ctx.setFillStyle("none");
        ctx.setLineWidth(1);
        ctx.setStrokeStyle("#BBBBBB");
        ctx.fillRect(0, 0, w, y); // tło - ramka 
        let glyph_f = new Vex.Flow.Glyph('vba', 40, { cache: false });
        let glyph_p = new Vex.Flow.Glyph('vbf', 40, { cache: false });
        ctx.setFillStyle("#000000");
        ctx.setLineWidth(0);
        glyph_f.render(ctx, 6, 20);
        glyph_p.render(ctx, 5, y - 10);
        ctx.fillRect(0, y, w, 0); // słupek dynamiki (rysowany na końcu grupy - na wierzchu)
        ctx.closeGroup();
        ctx.restore();
        this.svgDynRect = gr.lastChild;
        gr.setAttribute("transform", "translate(120,10)");
    }
    // TODO:
    message(msg) {
        let sel = msg[1];
        if (sel == "pch" || sel == "pitch") {
            this.setPitch(msg[2]);
        }
        else if (sel == "dyn") {
            this.setDynamic(msg[2]);
        }
        else if (sel == "pchdyn") {
            this.setPitch(msg[2]);
            this.setDynamic(msg[3]);
        }
    }
    // rysowanie słupka dynamiki
    setDynamic(dyn) {
        // słupek SVG Rect z boku; wstawiony w
        let svgr = this.svgDynRect;
        if (dyn >= 0 && dyn <= 1) {
            let h = 150 * dyn;
            let y = 150 - h;
            svgr.setAttribute("y", y.toString());
            svgr.setAttribute("height", h.toString());
            svgr.setAttribute("fill-opacity", (dyn * 0.8 + 0.2).toString());
        }
    }
    validatePitchString(pc) {
        const charSet = "abcdefgABCDEFG";
        return charSet.includes(pc[0]) ? pc[0] : "c";
    }
    validateAccidentalString(acc) {
        const strSet = ["n", "b", "#"];
        return strSet.indexOf(acc) != -1 ? acc : "";
    }
    validateOctave(oct) {
        return Math.min(Math.max(oct, 1), 8);
    }
    validateDyn(dyn) {
        return Math.min(Math.max(dyn, 0), 1);
    }
    midi2pitch(pch) {
        if (this.b_flat_transposition)
            pch = pch + 2;
        let pc = Math.floor(pch) % 12;
        let oct = (pch / 12 | 0) - 1;
        let pchaccstr = SXVInstant.pchtable[pc];
        let pcstr = pchaccstr[0];
        let accstr = pchaccstr[1] || "";
        return [pcstr, accstr, oct];
    }
    setPitch(pch) {
        if (pch > 0 && pch < 128) {
            this.drawPitch.apply(this, this.midi2pitch(pch));
        }
        else {
            this.clearPitch();
        }
    }
    drawPitch(pc, acc, oct) {
        /* let vpc = this.validatePitchString(pc);
        let vacc = this.validateAccidentalString(acc);
        let voct = this.validateOctave(oct); */
        // clear previous pitch
        this.clearPitch();
        // construct a new note (visual symbol)
        let note = new Vex.Flow.StaveNote({
            clef: this.clef,
            keys: [`${pc}${acc}/${oct}`],
            duration: this.noteduration
        });
        note.setContext(this.vfc);
        note.setStave(this.staff);
        if (acc)
            note.addAccidental(0, new Vex.Flow.Accidental(acc));
        // ... w tym miejscu możemy dodawać inne dodatkowe elementy - artykulacje etc
        // łuki, widełki, teksty etc dodaje się już do gotowych nut
        //=
        // poniższa linijka jest bardzo wazna - bez niej nic nie narysujemy
        // dodajemy nutę do kontekstu czasowego (tickContext, w lily to jest NoteColumn)
        // odpalamy preformatowanie <=== WAŻNE!
        // określamy dodatkowe parametry układu (np. przesunięcia)
        this.tick.addTickable(note).preFormat().setX(30);
        this.lastnote = this.vfc.openGroup();
        note.draw();
        this.vfc.closeGroup();
    }
    clearPitch() {
        if (this.lastnote && this.lastnote.parentNode)
            this.lastnote.parentNode.removeChild(this.lastnote);
    }
}
SXVInstant.instr_clef = {
    "1": "treble",
    "2": "treble",
    "3": "treble",
    "4": "bass" //vc
};
/*
private get_pitch_data(pch: number): [string, string] {
    if (this.b_flat_transposition) pch = pch + 2;
    if (this.amoll_for_instruments[this.instr - 1]) pch = pch + 4;
    let pc = pch % 12;
    let oct = pch / 12 | 0; // bitwise_or for integer part
    return [this.pitch_table[pc], (oct - 1).toString()];
}
*/
SXVInstant.pchtable = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "G#", "A", "Bb", "B"];
//# sourceMappingURL=sysxview_instant.js.map