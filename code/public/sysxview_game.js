"use strict";
/// <reference path="sysxview.ts" />
class SXVGame extends SysXView {
    constructor() {
        super(...arguments);
        this.pieRAF_ID = 0;
        this.bflat_instrument = false;
    }
    createDOMElements() {
        this.bar_max_height = 100; // wysokość słupków w pitchpool
        this.svg = document.createElementNS('http://www.w3.org/2000/svg', "svg");
        this.svg.setAttribute("height", "600");
        this.svg.setAttribute("width", "1000");
        this.div.appendChild(this.svg);
        this.preparePie();
        this.preparePlayafterText();
        this.preparePlayafterLabel();
        this.preparePitchpool();
        // dwa następne muszą być na wierzchu
        this.prepareResponseOkSign();
        this.prepareResponseFailSign();
    }
    initializeView(instr) {
        this.bflat_instrument = instr == "2";
    }
    setPlayafter(instr) {
        if (instr >= 1 && instr <= 4) {
            this.svgPlayafter_text.textContent = ["", "FL", "CL", "VN", "VC"][instr];
        }
        else if (instr == 100) {
            this.svgPlayafter_text.textContent = "GO!";
        }
        else {
            this.svgPlayafter_text.textContent = "-";
        }
    }
    blinkOK() {
        this.blinkSVGelementWithCSS(this.svgOK);
    }
    blinkFail() {
        this.blinkSVGelementWithCSS(this.svgFail);
    }
    setPie(percent) {
        this.svgPie.setAttribute("d", this.svgPathDataForArc(percent));
    }
    setPieOpacity(o) {
        this.svgPie.parentElement.setAttribute("opacity", o.toString());
    }
    startPieAnim(timeout) {
        let start = performance.now();
        if (this.pieRAF_ID)
            window.cancelAnimationFrame(this.pieRAF_ID);
        let rAF = (timestamp) => {
            let progress = 1 - ((timestamp - start) / timeout);
            if (progress > 0) {
                this.setPie(progress);
                this.pieRAF_ID = window.requestAnimationFrame(rAF);
            }
            else {
                this.setPie(0);
                this.pieRAF_ID = 0;
            }
        };
        this.pieRAF_ID = window.requestAnimationFrame(rAF);
    }
    message(m) {
        //if (typeof m === "object") console.log("GAME: object received: ", m);
        if (Array.isArray(m))
            switch (m[1]) {
                case "playAfter":
                    this.setPlayafter(m[2]);
                    break;
                case "pitchpool":
                    this.setPitchpool(m.slice(2));
                    break;
                case "pitchpool.hide":
                    this.setPitchpoolOpacity(m[2] > 0 ? 0.1 : 1);
                    break;
                case "timer":
                    this.startPieAnim(m[2]);
                    break;
                case "timer.hide":
                    this.setPieOpacity(m[2] > 0 ? 0.1 : 1);
                    break;
                case "ok":
                    this.blinkOK();
                    break;
                case "fail":
                    this.blinkFail();
                    break;
            }
        /*
        Interfejs:
        playAfter N - nr instrumentu 1-4
        pitchpool.hide N - 0/1 czy ukryty zbiór wysokości
        timer N - odpala timer z czasem N ms
        pitchpool N*12 - zestaw danych do pitchpoola UWAGA to jest tablica INTów!!! - trzeba przeskalować przez coś, jakąś max wartość
        ok <punkty> <czas reakcji> <zagrana wysokość>
        fail <punkty> <czas reakcji> <zagrana wysokość>
         */
    }
    setPitchpool(val) {
        if (val.length == 12)
            val.forEach((v, i) => {
                if (this.bflat_instrument)
                    i = (i + 2) % 12;
                if (v >= 0 && v <= 1)
                    this.svgPitchpoolBars[i].setAttribute("height", (v * this.bar_max_height).toString());
            });
    }
    setPitchpoolOpacity(o) {
        this.svgGPitchpool.setAttribute("opacity", o.toString());
    }
    //// -=-=-=- PRIVATE -=-=-=-
    preparePitchpool() {
        const bar_width = 30;
        const bar_gap = 10;
        const bar_max_height = this.bar_max_height;
        const bg_pad = 20;
        const bg_width = bar_width * 12 + bar_gap * 11 + bg_pad;
        const svg_width = parseInt(this.svg.getAttribute("width") || "1000");
        const pitch_names_uni = ["C", "C\u266F", "D", "E\u266D", "E", "F", "F\u266F", "G", "G\u266F", "A", "B", "H"];
        const wb_keys = [0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0];
        let g = this.createSVGElement("g");
        //g.classList.add("game_pitchpool_background");
        g.setAttribute("transform", `translate(${(svg_width - bg_width) / 2},40)`);
        {
            let e = this.createSVGElement("rect");
            let attrs = {
                width: bg_width.toString(),
                height: (bar_max_height + bg_pad + 20).toString(),
            };
            for (let attr in attrs)
                e.setAttribute(attr, attrs[attr]);
            e.classList.add("game_pitchpool_background");
            g.appendChild(e);
        }
        let bars = new Array(12).fill(null).map((_, i) => {
            let e = this.createSVGElement("rect");
            let x = i * (bar_width + bar_gap) + bg_pad / 2;
            let xt = x + (bar_width / 2);
            let yt = bar_max_height + bg_pad + 10;
            let attrs = {
                transform: `matrix(1 0 0 -1 ${x} ${bar_max_height + bg_pad / 2})`,
                width: bar_width.toString(),
                height: ""
            };
            for (let attr in attrs)
                e.setAttribute(attr, attrs[attr]);
            e.classList.add(wb_keys[i] ? "game_pitchpool_bar_black" : "game_pitchpool_bar");
            let t = this.createSVGElement("text");
            t.setAttribute("x", xt.toString());
            t.setAttribute("y", yt.toString());
            t.classList.add("game_pitchpool_pitchname");
            t.textContent = pitch_names_uni[i];
            g.appendChild(e);
            g.appendChild(t);
            return e;
        });
        this.svgPitchpoolBars = bars;
        this.svgGPitchpool = g;
        this.addToSVG(g);
    }
    preparePlayafterText() {
        let t = this.createSVGElement("text");
        let attrs = {
            x: "500", y: "380", id: "game_playafter_text"
        };
        for (let attr in attrs)
            t.setAttribute(attr, attrs[attr]);
        t.textContent = "VC";
        this.svgPlayafter_text = t;
        this.addToSVG(t);
    }
    preparePlayafterLabel() {
        let t = this.createSVGElement("text");
        let attrs = {
            x: "390", y: "360", id: "game_playafter_label"
        };
        for (let attr in attrs)
            t.setAttribute(attr, attrs[attr]);
        t.textContent = "zagraj po:";
        this.addToSVG(t);
    }
    prepareResponseOkSign() {
        let e = this.createSVGElement("path");
        let attrs = {
            d: "m438.50983,193.92163l14.19687,-15.95694l38.82898,43.70584l64.77744,-72.84982l14.19672,15.95755l-78.97415,88.82477",
            //x: "0", y: "0", 
            fill: "#00c800",
            id: "game_ok"
        };
        for (let attr in attrs)
            e.setAttribute(attr, attrs[attr]);
        e.classList.add("hide_game_sign");
        this.svgOK = e;
        this.addToSVG(e);
    }
    prepareResponseFailSign() {
        let e = this.createSVGElement("path");
        let attrs = {
            d: "m444.84293,166.67346l27.88141,-27.88141l29.61865,29.61771l29.61807,-29.61771l27.88184,27.88141l-29.6181,29.61771l29.6181,29.61951l-27.88184,27.88138l-29.61807,-29.61777l-29.61865,29.61777l-27.88141,-27.88138l29.61816,-29.61951l-29.61816,-29.61771z",
            //x: "0", y: "0", 
            fill: "#ff0000",
            id: "game_fail"
        };
        for (let attr in attrs)
            e.setAttribute(attr, attrs[attr]);
        e.classList.add("hide_game_sign");
        this.svgFail = e;
        this.addToSVG(e);
    }
    preparePie() {
        let c = this.createSVGElement("circle");
        c.setAttribute("r", "0.985"); // promień zmniejszony o połowę grubości linii okręgu
        c.setAttribute("fill", "#EAEAFF");
        c.setAttribute("stroke", "#AAB");
        c.setAttribute("stroke-width", "0.03");
        c.setAttribute("transform", "translate(500,350) scale(100,100)");
        c.classList.add("game_pie_background");
        let e = this.createSVGElement("path");
        e.setAttribute("d", this.svgPathDataForArc(0.33));
        e.setAttribute("fill", "#AAB");
        e.setAttribute("stroke", "none");
        e.setAttribute("transform", "rotate(-90, 500, 350) translate(500,350) scale(100,100)");
        e.classList.add("game_pie_arc");
        let g = this.createSVGElement("g");
        g.appendChild(c);
        g.appendChild(e);
        this.addToSVG(g);
        this.svgPie = e;
    }
    blinkSVGelementWithCSS(elem) {
        elem.classList.remove("hide_game_sign");
        elem.classList.add("show_game_sign");
        window.setTimeout(() => {
            elem.classList.add("hide_game_sign");
            elem.classList.remove("show_game_sign");
        }, 50);
    }
    createSVGElement(name) {
        return document.createElementNS('http://www.w3.org/2000/svg', name);
    }
    addToSVG(elem) {
        this.svg.appendChild(elem);
    }
    angleToXY(percent) {
        const x = Math.cos(2 * Math.PI * percent);
        const y = Math.sin(2 * Math.PI * percent);
        return [x, y];
    }
    svgPathDataForArc(percent) {
        const [startX, startY] = [1, 0]; //this.angleToXY(0);
        const [endX, endY] = this.angleToXY(percent);
        const largeArcFlag = percent > .5 ? 1 : 0;
        const pathData = [
            `M ${startX} ${startY}`,
            `A 1 1 0 ${largeArcFlag} 1 ${endX} ${endY}`,
            `L 0 0`,
        ].join(' ');
        return pathData;
    }
}
//# sourceMappingURL=sysxview_game.js.map