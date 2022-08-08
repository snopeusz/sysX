"use strict";
/// <reference path="sysxview.ts" />
class SysXConnectionNX {
    constructor() {
        this.views = {};
        //this.initializeViews();
    }
    ;
    
    // initialize views after connection has made to configure views for 
    // declared instruments
    initializeViews() {
        let instr = this.ui_nav.instrument.value;
        for (let vn in this.views)
            this.views[vn].initializeView(instr);
    }
    
    send_message_to_view(msg) {
        let vn = msg[0];
        if (vn) {
            let view = this.views[vn];
            if (view) {
                view.message(msg);
            }
        }
    }
    
    change_view_to(view_name) {
        for (let vn in this.views)
            (vn === view_name) ? this.views[vn].show() : this.views[vn].hide();
    }

    add_view(name, view) {
        this.views[name] = view;
    }
}
;
