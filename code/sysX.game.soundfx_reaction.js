outlets = 1;

var hits = [0, 0, 0, 0];

var jingle_threshold = 3
declareattribute("jingle_threshold",null,null,1);

function get_jingle_name(index) {
	switch(index) {
		case -2: return "down";
		case -1: return "fail";
		case 1: return "ok";
		case 2: return "up2";
		default: return;
	}
}

function reset() {
	hits = [0, 0, 0, 0]; 
}

function list() {
	var values = arrayfromargs(arguments);
	var instr = values[0];
	var okfail = values[1];
	var wys = values[4];
	
	var hit = hits[instr];
	
	if (okfail == "ok") {
		if (hit <= 0) hit = 1; else hit++;
	} else {
		if (hit >= 0) hit = -1; else hit--;
	}
	
	hits[instr] = hit;
	
	var jingle_index = Math.floor(((hit>0)?1:-1) * ((Math.abs(hit)>jingle_threshold)?2:1));
	
	outlet(0, instr, get_jingle_name(jingle_index), wys);
}
