"use strict";
/// <reference path="sysxview.ts" />
class SysXConnection {
    constructor() {
        // access to navbar elements
        this.ui_nav = {
            hostname: document.getElementById("host_address"),
            hostport: document.getElementById("host_port"),
            connect: document.getElementById("connect_button"),
            connection_info: document.getElementById("connected_label"),
            instrument: document.getElementById("select_instrument")
        };
        this.xs_channel_name = this.ui_nav.instrument.value;
        this.xs_is_connected = false;
        this.views = {};
        // init navbar elements
        this.init_ui_fields_for_xebra_connection();
        this.nosleep = new NoSleep();
        console.log("SysX Connection constructor.");
    }
    ;
    init_ui_fields_for_xebra_connection() {
        let hostname = document.location.hostname || "127.0.0.1";
        let hostport = +(document.location.port) || 8086;
        this.ui_nav.hostname.value = hostname;
        this.ui_nav.hostport.value = (hostport && 8086) + "";
        this.ui_nav.connect.value = "Connect";
        this.ui_nav.connect.addEventListener('click', () => {
            this.nosleep.enable();
            (this.xs_is_connected) ?
                this.disconnect_from_max() : this.connect_to_max();
        });
    }
    ;
    init_xebra_listeners() {
        let channel_name_for_instrument = this.xs_channel_name;
        this.xebra_listeners = {
            "connection_changed": (connection_state) => {
                //console.log("connection_changed:", connection_state); // DEBUG
                switch (connection_state) {
                    case Xebra.CONNECTION_STATES.CONNECTED:
                        this.connected_to_max();
                        break;
                    case Xebra.CONNECTION_STATES.DISCONNECTED:
                    case Xebra.CONNECTION_STATES.CONNECTION_FAIL:
                        this.disconnected_from_max();
                        break;
                    case Xebra.CONNECTION_STATES.CONNECTING:
                        this.update_connection_info("Connecting...");
                        break;
                    case Xebra.CONNECTION_STATES.RECONNECTING:
                        this.update_connection_info("Reconnecting...");
                        break;
                    case Xebra.CONNECTION_STATES.INIT:
                        this.update_connection_info("Initializing...");
                        break;
                }
                ;
            },
            "channel_message_received": (name, message) => {
                if (name === channel_name_for_instrument || name === "0") {
                    //console.log("Message to instrument", message); // DEBUG
                    if (message[0] === "view" && ((typeof message[1]) === "string"))
                        this.change_view_to(message[1]);
                    else
                        this.send_message_to_view(message);
                }
            },
        };
    }
    ;
    connect_to_max() {
        this.xs && this.xs.close(); // close previus xebra state object.
        // how to delete/destroy an object? (the old Xebra.State)
        this.xs = new Xebra.State({
            hostname: this.ui_nav.hostname.value,
            port: +(this.ui_nav.hostport.value),
            auto_connect: false,
        });
        this.xs_channel_name = this.ui_nav.instrument.value;
        this.init_xebra_listeners();
        this.applyListneresToXebra();
        this.xs.connect();
        // let mira_name = this.get_instr_name_for_mira_connection();
        // if (mira_name) this.xs.name = mira_name;
    }
    ;
    disconnect_from_max() {
        this.xs && this.xs.close();
    }
    ;
    applyListneresToXebra() {
        if (this.xs)
            for (let eventname in this.xebra_listeners)
                this.xs.on(eventname, this.xebra_listeners[eventname]);
    }
    disconnected_from_max() {
        this.xs_is_connected = false;
        this.ui_nav.connect.value = "Connect"; // Button text
        this.update_connection_info("Not connected");
        // enable fields for user interaction
        this.ui_nav.instrument.disabled = false;
        this.ui_nav.hostname.readOnly = false;
        this.ui_nav.hostport.readOnly = false;
    }
    connected_to_max() {
        this.xs_is_connected = true;
        this.ui_nav.connect.value = "Disconnect"; // Button text
        this.update_connection_info("Connected");
        // disable fields from user interaction
        this.ui_nav.instrument.disabled = true;
        this.ui_nav.hostname.readOnly = true;
        this.ui_nav.hostport.readOnly = true;
        this.initializeViews();
    }
    // initialize views after connection has made to configure views for 
    // declared instruments
    initializeViews() {
        let instr = this.ui_nav.instrument.value;
        for (let vn in this.views)
            this.views[vn].initializeView(instr);
    }
    get_instr_name_for_mira_connection() {
        let ins = parseInt(this.ui_nav.instrument.value);
        if (Number.isFinite(ins)) {
            return ["fl", "cl", "vn", "vc"][ins - 1];
        }
        else {
            return undefined;
        }
    }
    update_connection_info(txt) {
        this.ui_nav.connection_info.innerText = txt;
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
//# sourceMappingURL=sysxconnection.js.map