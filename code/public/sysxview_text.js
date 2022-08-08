"use strict";
/// <reference path="sysxview.ts" />
class SXVText extends SysXView {
    message(m) {
        if (Array.isArray(m))
            switch (m[1]) {
                case "title":
                    this.title_text.textContent = m.slice(2).join(" ");
                    break;
                case "text":
                case "body":
                    this.body_text.textContent = m.slice(2).join(" ");
                    break;
                case "clear":
                    this.clear();
                    break;
            }
    }
    createDOMElements() {
        this.title_text = document.createElement("h1");
        this.body_text = document.createElement("p");
        this.body_text.style.fontSize = "18";
        this.title_text.style.top = "50px";
        this.div.appendChild(this.title_text);
        this.div.appendChild(this.body_text);
    }
    initializeView(instr) {
        this.clear();
    }
    clear() {
        this.title_text.textContent = "--";
        this.body_text.textContent = "";
    }
}
//# sourceMappingURL=sysxview_text.js.map