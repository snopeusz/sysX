"use strict";
/// <reference path="sysxview.ts" />
class SXVTest extends SysXView {
    message(m) {
        if (m[1] === "text")
            this.title_text.textContent = m.slice(1).join(" "); // 
        if (typeof m === "object")
            console.log("object received: ", m);
    }
    createDOMElements() {
        this.title_text = document.createElement("h1");
        this.div.appendChild(this.title_text);
    }
    initializeView(instr) {
        this.title_text.textContent = "Cześć!!!";
    }
}
//# sourceMappingURL=sysxview_test.js.map