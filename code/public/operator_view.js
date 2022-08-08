"use strict";
/// <reference path="sysxconnection.ts" />
/// <reference path="sysxview.ts" />
// a study in connecting browser to max

document.getElementById("select_instrument").hidden = true;

//declare class SysXConnection;
let sysx2 = new SysXConnection();
//sysx2.add_view("test", new SXVTest());
//sysx2.add_view("pb", new SXVPhraseBook());
sysx2.add_view("pb", new SXVPhraseBook1());
// sysx2.add_view("instant", new SXVInstant());
// sysx2.add_view("text", new SXVText());
// sysx2.add_view("game", new SXVGame());
// TESTING FIXME:
sysx2.change_view_to("pb");
//let gv = sysx.views.game;
//# sourceMappingURL=operator_view.js.map