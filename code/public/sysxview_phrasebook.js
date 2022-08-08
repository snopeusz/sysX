"use strict";
/// <reference path="sysxview.ts" />
/// <reference path="phrasebook.ts" />
class SXVPhraseBook extends SysXView {
    createDOMElements() {
        this.div1 = document.createElement("div");
        this.div2 = document.createElement("div");
        this.div1.id = "pbdiv1";
        this.div2.id = "pbdiv2";
        this.div1.classList.add("centered");
        this.div2.classList.add("centered");
        this.div2.style.top = "300px";
        this.div.appendChild(this.div1);
        this.div.appendChild(this.div2);
        this.pb1 = new PhraseBook(1, this.div1.id, 900, 300);
        this.pb2 = new PhraseBook(1, this.div2.id, 900, 300);
    }
    initializeView(instr) {
        this.pb1.set_instr(parseInt(instr));
        this.pb2.set_instr(parseInt(instr));
    }
    message(m) {
        if (m.type === "next") {
            console.log("next pb:", m);
            this.display_next(m);
        }
        else if (m[1] == "clear") {
            this.clear_pbs();
        }
    }
    // -=-=-=-=- PRIVATE -=-=-=-=-=-
    display_next(fromMax) {
        let i = (fromMax.counter_text - 1) % 2; // counter_text - zaczynamy liczyć od jedynki
        let pbs = [this.pb1, this.pb2];
        pbs[i].set_score(fromMax);
        pbs[1 - i].set_highlight_and_redraw(true);
        pbs[i].set_highlight_and_redraw(false);
    }
    clear_pbs() {
        this.pb1.clear();
        this.pb2.clear();
    }
}
/**
 * Widok do testowania - tylko jeden system, za to wszystkie instrumenty
 */
class SXVPhraseBook1 extends SysXView {
    constructor() {
        super(...arguments);
        this.segment_count = 0;
    }
    createDOMElements() {
        this.div1 = document.createElement("div");
        this.div1.id = "pb1div1";
        this.div1.classList.add("centered");
        this.info_label = document.createElement("p");
        this.info_label.textContent = "OP Phrasebook View";
        this.div.appendChild(this.info_label);
        this.div.appendChild(this.div1);
        this.pb = new PhraseBook(1, this.div1.id, 1100, 900);
    }
    initializeView(instr) {
        this.pb.set_instr(4);
        this.pb.only_selectect_instrument = false;
        this.pb.draw_dynprofile = false;
        this.pb.highlight_selected_instrument = false;
    }
    message(m) {
        if (m.type === "next") {
            //console.log("next pb:", m);
            this.display_next(m);
        }
        else if (m[1] === "clear") {
            this.clear_pbs();
        }
    }
    // -=-=-=-=- PRIVATE -=-=-=-=-=-
    display_next(fromMax) {
        this.pb.set_score(fromMax);
        this.pb.redraw_one_before_last_score();
    }
    clear_pbs() {
        this.pb.clear();
    }
}
//# sourceMappingURL=sysxview_phrasebook.js.map