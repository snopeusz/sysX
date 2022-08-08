"use strict";
class SysXView {
    constructor() {
        // z automatu tworzymy element "div", który będzie zawierał wszystkie inne elementy wizualne
        this.div = document.createElement("div");
        // create elements
        this.hide();
        document.body.appendChild(this.div);
        this.div.classList.add("centered"); // defined in CSS 
        // append to DOM
        this.createDOMElements();
    }
    startProcessing() { }
    ;
    endProcessing() { }
    ;
    show() {
        this.startProcessing();
        this.div.hidden = false;
        this.visible = true;
    }
    hide() {
        this.div.hidden = true;
        this.endProcessing();
        this.visible = false;
    }
    message(m) {
        // interface interaction
    }
    // tak na prawdę, to mogłaby być jedna metoda, 
    // nie musi być przedzielona wywołaniem this.hide() – główny
    // element div już i tak istnieje i po prostu go chowamy.
    createDOMElements() { }
    /**
     * Initialize thie view after obtaining a connection with Max
     * This method should create or initialize all elements dependent on
     * an instrument choice (eg. clefs, transpositions, etc).
     * The instrument name is passed as the first argument.
     * (1=fl, 2=cl, 3=vn, 4=vc)
     */
    initializeView(instrumentName) { }
}
//# sourceMappingURL=sysxview.js.map