"use strict";
/// <reference path="sysxconnection.ts" />
/// <reference path="sysxview.ts" />
// a study in connecting browser to max
//declare class SysXConnection;
let sysx = new SysXConnection();
sysx.add_view("test", new SXVTest());
sysx.add_view("pb", new SXVPhraseBook());
sysx.add_view("pb1", new SXVPhraseBook1());
sysx.add_view("instant", new SXVInstant());
sysx.add_view("text", new SXVText());
sysx.add_view("game", new SXVGame());
// TESTING FIXME:
//sysx.change_view_to("pb");
let gv = sysx.views.game;
//# sourceMappingURL=index.1.js.map