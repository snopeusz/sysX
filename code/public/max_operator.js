"use strict";

let label1 = document.createElement("p");
label1.textContent = "OpView" + Date.now();// + (window.max).toString();
document.body.appendChild(label1);

let sysx = new SysXConnection();
sysx.add_view("pb", new SXVPhraseBook1());
sysx.initializeViews();
change_view_to("pb");


window.max.bindInlet('sysdict', function (dictname) {
    window.max.getDict(dictname, function (dict) {
        //if (dict[0] == "pb" && dict.type == "next") {
        sysx.send_message_to_view(dict);
        //window.max.outlet("dict_recv", dict.counter_text)
        //}
    });
    window.max.outlet("dict-recv");
});

window.max.bindInlet('sysclear', function () {
    sysx.send_message_to_view(["pb", "clear"]);
    window.max.outlet("pb-clear")
});