autowatch = 1;
// wersja do eksperymentów -ak
/*

	simple agent simulation using "boids" like rules
	
	each agent has a position, a velocity and a set of rules which acts upon its velocity
	
	1 separate: run from positions of nearby neighbors (within septhresh)
	2 align: conform velocity to average velocity 
	3 cohere: move towards center of mass	
	4 gravitate: move towards/away from center of gravitation (gravpoint)
	
	there is also a crass simulation of inertia and friction. the space 
	is considered to be a torus, but certain things, like center of mass, 
	don't currently take this into account. so when an agent "escapes" 
	across a boundary to the other side of the torus, it has dramatic effect 
	on the pack's movement related to the "cohere" rule.
	
	for more info on boids/agent simulation check out Craig Reynolds' site:
	http://www.red3d.com/cwr/
	
	this example also shows a simple example of object oriented programming 
	in javascript (agent class), as well as the use of function pointers 
	(agent class tick method and rules array).
	
	for more info on object oriented programming with javascript, check out:
	http://www.javascriptkit.com/javatutors/oopjs.shtml
	http://www.sitepoint.com/article/470

*/

// set up inlets/outlets/assist strings
outlets = 1;
setinletassist(0, "bang calculates one iteration of simulation");
//setoutletassist(2,"bang once for each series of x/y/vx/vy lists");
//setoutletassist(1,"average x/y/vx/vy list");
setoutletassist(0, "agent_x/agent_y/agent_xy lists");

// global varables and code
var centroid_x = 0.;
var centroid_y = 0.;
var avgvelocity_x = 0.;
var avgvelocity_y = 0.;

var myseparation = 0.03;
var myalignment = 0.05;
var mycoherence = 0.02;
var myinertia = 0.5;
var myfriction = 0.5;
var mysepthresh = 0.1;
var mymaxvel = 0.05;
var mygravity = 0.;
var mygravpoint_x = 0.5;
var mygravpoint_y = 0.5;

var myagentcount = 20;


// musical data - const
var mm_scales = {
	"1": [0, 7, 3, 2, 10, 5, 8, 1, 9, 6, 11, 4],
	"2": [0, 7, 4, 9.5, 2, 5.5, 8.5, 11, 1, 3, 4.5, 6.5, 7.5, 9, 10.5], //TODO: skale tylko 12-stopniowe!
	//"3": [0, 7.5, 3.5, 2, 8.5, 5, 0.5, 1, 7.5, 6, 11, 9]
	"3": [0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11]
};

var mm_instr_ranges = {
	"0": [65.0, 65.0, 65.0, 65.0, 65.0, 65.0, 65.0, 65.0],
	"1": [60.0, 72.0, 60.0, 72.0, 60.0, 72.0, 60.0, 72.0],
	"2": [60.0, 72.0, 60.0, 72.0, 60.0, 72.0, 48.0, 60.0],
	"3": [67.0, 79.0, 55.0, 67.0, 55.0, 67.0, 43.0, 55.0],
	"4": [77.0, 89.0, 53.0, 65.0, 65.0, 77.0, 41.0, 53.0],
	"5": [60.0, 84.0, 60.0, 84.0, 60.0, 84.0, 36.0, 60.0],
	"6": [60.0, 91.0, 50.0, 86.0, 55.0, 91.0, 36.0, 72.0],
	"7": [60.0, 60.0, 50.0, 50.0, 55.0, 55.0, 36.0, 36.0],
	"8": [60.0, 91.0, 50.0, 86.0, 55.0, 91.0, 36.0, 72.0],
	"9": [92.0, 96.0, 87.0, 91.0, 92.0, 96.0, 77.0, 81.0],
	"10": [60.0, 91.0, 50.0, 86.0, 55.0, 91.0, 36.0, 72.0],
	"11": [89.0, 89.0, 53.0, 53.0, 77.0, 77.0, 41.0, 41.0],
	"12": [65.0, 65.0, 65.0, 65.0, 65.0, 65.0, 65.0, 65.0]
};

// music mapping parameters:
var mm_sah_threshold = 0.0;
var mm_dyn_sah_mode = 0; // 0=b/p, 1=0-threshold, 2-peak
var mm_pch_sah_mode = 0; // 0=b/p, 1=0-threshold, 2-peak
var mm_pch_line_bp = true;
var mm_pch_line_target = 0.5;
var mm_pch_line_time = 500;
var mm_pch_map_ranges = 6; // index of a instr range
var mm_pch_map_scale = 1;
var mm_pch_map_steps = 12;
var mm_pch_map_root = 0;
var mm_pch_map_quantize = false;
var mm_dyn_fix_bp = true;
var mm_dyn_fix_level = 1.0;
var mm_dyn_decay_bp = true;
var mm_dyn_decay_time = 500;

declareattribute("mm_sah_threshold", null, null, 1);
declareattribute("mm_dyn_sah_mode", null, null, 1);
declareattribute("mm_pch_sah_mode", null, null, 1);
declareattribute("mm_pch_line_bp", null, null, 1);
declareattribute("mm_pch_line_target", null, null, 1);
declareattribute("mm_pch_line_time", null, null, 1);
declareattribute("mm_pch_map_ranges", null, null, 1);
declareattribute("mm_pch_map_scale", null, "set_mm_pch_map_scale", 1);
declareattribute("mm_pch_map_steps", null, "set_mm_pch_map_steps", 1);
declareattribute("mm_pch_map_root", null, "set_mm_pch_map_root", 1);
declareattribute("mm_pch_map_quantize", null, "set_mm_pch_map_quantize", 1);
declareattribute("mm_dyn_fix_bp", null, null, 1);
declareattribute("mm_dyn_fix_level", null, null, 1);
declareattribute("mm_dyn_decay_bp", null, null, 1);
declareattribute("mm_dyn_decay_time", null, null, 1);

// -- custom setters:
function set_mm_pch_map_quantize(newval) {
	mm_pch_map_quantize = newval;
	send_dict_to_drone();
}
function set_mm_pch_map_root(newval) {
	mm_pch_map_root = newval;
	send_dict_to_drone();
}
function set_mm_pch_map_scale(newval) {
	mm_pch_map_scale = newval;
	calculate_scale();
	send_dict_to_drone();
}
function set_mm_pch_map_steps(newval) {
	mm_pch_map_steps = newval;
	calculate_scale();
	send_dict_to_drone();
}

// -- optimize scale calcualtions
var calculated_scale = [];

function calculate_scale() {
	calculated_scale = (mm_scales[mm_pch_map_scale]).slice(0, mm_pch_map_steps);
}

function get_scale() {
	//return (mm_scales[mm_pch_map_scale]).slice(0, mm_pch_map_steps);
	return calculated_scale;
}


// -- dictionary with data for drone synthesizer
var dict_for_drone = new Dict();

function send_dict_to_drone() {
	dict_for_drone.set("quantize", mm_pch_map_quantize);
	dict_for_drone.set("root", mm_pch_map_root);
	dict_for_drone.set("scale", get_scale());
	messnamed("sysX.flocking.to-drone", "dictionary", dict_for_drone.name);
}



// initialize agents
var agents = new Array();
// agentcount(4);

function agentcount(v) {
	// clip agentcount to range 1.-100.
	myagentcount = clip(v, 1, 100);
	for (i = 0; i < myagentcount; i++) {
		var x, y, vx, vy;

		// start with random position/velocity
		x = Math.random();
		y = Math.random();
		vx = (Math.random() - 0.5) * 0.1;
		vy = (Math.random() - 0.5) * 0.1;

		// create a new agent object
		agents[i] = new agent(x, y, vx, vy, i);

		// set this agent's rules
		agents[i].rulecount = 4;
		agents[i].rules[0] = separate;
		agents[i].rules[1] = align;
		agents[i].rules[2] = cohere;
		agents[i].rules[3] = gravitate;

		// the rules array is a set of functions
		// to be called once per simulation tick,
		// in the order in which they inhabit
		// the array. could add/remove rules here		
	}
}


function separation(v) {
	myseparation = clip(v, 0, 1) * 0.1;
}

function alignment(v) {
	myalignment = clip(v, 0, 1) * 0.1;
}

function coherence(v) {
	mycoherence = clip(v, 0, 1) * 0.1;
}

function friction(v) {
	myfriction = clip(v, 0, 1);
}

function inertia(v) {
	myinertia = clip(v, 0, 1);
}

function septhresh(v) {
	mysepthresh = clip(v, 0, 0.5);
}

function maxvel(v) {
	mymaxvel = clip(v, 0, 1) * 0.1;
}

function gravity(v) {
	mygravity = clip(v, -1, 1) * 0.1;
}

function gravpoint(x, y) {
	mygravpoint_x = clip(x, 0, 1);
	mygravpoint_y = clip(y, 0, 1);
}



// task function

function bang() {
	var i;
	var ax = [], ay = [];
	var axy = []; // a list with x,y pairs for all agents
	var cx = 0;
	var cy = 0;
	var cvx = 0;
	var cvy = 0;

	//outlet(2,"bang");

	for (i = 0; i < myagentcount; i++) {
		agents[i].tick();
		//outlet(0,agents[i].x,agents[i].y,agents[i].vx,agents[i].vy);
		ax.push(agents[i].x);
		ay.push(agents[i].y);
		// to one list:
		axy.push(agents[i].x);
		axy.push(agents[i].y);

		cx += agents[i].x;
		cy += agents[i].y;
		cvx += agents[i].vx;
		cvy += agents[i].vy;
	}
	outlet(0, "agent_x", ax);
	outlet(0, "agent_y", ay);
	outlet(0, "agent_xy", axy);

	centroid_x = cx / myagentcount;
	centroid_y = cy / myagentcount;
	avgvelocity_x = cvx / myagentcount;
	avgvelocity_y = cvy / myagentcount;
}


// **** the agent class constructor
function agent(x, y, vx, vy, i) {
	this.x = x;
	this.y = y;
	this.vx = vx;
	this.vy = vy;
	this.rulecount = 0;
	this.rules = new Array();
	this.tick = agent_tick; // tick method
	// history
	this.x0 = x;
	this.y0 = y;
	this.vx0 = vx;
	this.vy0 = vy;
	// temp vars
	this.tempx = 0;
	this.tempy = 0;
	this.xdecaytime = -1;
	this.ydecaytime = -1;
	// id of the agent (0-based)
	this.id = i;
}

// one iteration of the simulation for a given agent

function agent_tick() {
	var i, px, py;

	// save current velocity for inertia calc
	px = this.vx;
	py = this.vy;

	// apply rules
	for (i = 0; i < this.rulecount; i++) {
		this.rules[i](this);
	}

	// inertia
	this.vx = px * myinertia + this.vx * (1. - myinertia);
	this.vy = py * myinertia + this.vy * (1. - myinertia);

	// velocity limit
	this.vx = clip(this.vx, -mymaxvel, mymaxvel);
	this.vy = clip(this.vy, -mymaxvel, mymaxvel);

	// update position based on velocity and friction
	this.x += this.vx * (1. - myfriction);
	this.y += this.vy * (1. - myfriction);

	//wrap(this); // torus space
	bounce_clip(this);

	agent_map_to_music(this);

	// history (prev value)
	this.x0 = this.x;
	this.y0 = this.y;
	this.vx0 = this.vx;
	this.vy0 = this.vy;

}


// mapping and sending musical data
function agent_map_to_music(a) {
	// process each agent to obtain music data
	var x = a.x, y = a.y, x0 = a.x0, y0 = a.y0;
	var vx = a.vx, vy = a.vy, vx0 = a.vx0, vy0 = a.vy0;
	var tempx = a.tempx;
	var tempy = a.tempy;
	var xdecaytime = a.xdecaytime;
	var ydecaytime = a.ydecaytime;

	// *** THRESHOLD mapping
	y = zmap(y, mm_sah_threshold, 1, 0, 1);
	y0 = zmap(y0, mm_sah_threshold, 1, 0, 1);

	//post("y pre=",y);

	// *** S&H DYN
	if (mm_dyn_sah_mode == 1) /* passing threshold from bottom */ {
		if (y > 0 && y0 <= 0) {
			tempy = y;
			ydecaytime = -1;
		} else {
			y = tempy;
		}
		//end of SAH mode 1
	} else if (mm_dyn_sah_mode == 2) /* change direction */ {
		if (vy <= 0 && vy0 > 0) {
			//changing direction at upper peak
			tempy = y;
			ydecaytime = -1;
		} else {
			y = tempy;
		}
		//end of SAH mode 2
	} else {
		tempy = y;
		ydecaytime = -1;
	}

	//post("y post=",y,"\n");

	// *** S&H PCH
	if (mm_pch_sah_mode == 1) /* passing threshold from bottom */ {
		if (y > 0 && y0 <= 0) {
			tempx = x;
			xdecaytime = -1;
		} else {
			x = tempx;
		}
		//end of SAH mode 1
	} else if (mm_pch_sah_mode == 2) /* change direction */ {
		if (vy <= 0 && vy0 > 0) {
			//changing direction at upper peak
			tempx = x;
			xdecaytime = -1;
		} else {
			x = tempx;
		}
		//end of SAH mode 2
	} else {
		tempx = x;
		xdecaytime = -1;
	}

	// *** DYN-FIX (automatycznie włączany przy dyn-sah mode 1, ponieważ w tym trybie dyn jest zapamiętywana i zwracana z poziomem bliskim zeru)
	if (!mm_dyn_fix_bp || mm_dyn_sah_mode == 1) {
		y = (y > 0.001 ? mm_dyn_fix_level : 0);
	}

	// *** DYN-DECAY
	if (!mm_dyn_decay_bp) {
		// TODO (aux var in 'a' object)
		if (ydecaytime <= 0) {
			ydecaytime = Date.now();
			tempy = y;
		} else {
			y = Math.max(
				0,
				tempy * (1 - ((Date.now() - ydecaytime) / mm_dyn_decay_time))
			);
		}
	}

	// *** PCH-LINE
	if (!mm_pch_line_bp) {
		// TODO (aux var in 'a' object)
		if (xdecaytime < 0) {
			xdecaytime = Date.now();
			tempx = x;
		} else {
			var progress = ((Date.now() - xdecaytime) / mm_pch_line_time);
			if (progress < 1) {
				x = tempx + ((mm_pch_line_target - tempx) * progress);
			} else {
				x = mm_pch_line_target;
			}
		}
	}

	// *** PCH-MAP
	var range_lo = mm_instr_ranges[mm_pch_map_ranges][a.id * 2];
	var range_hi = mm_instr_ranges[mm_pch_map_ranges][a.id * 2 + 1];
	var pch = number_scale(x, 0, 1, range_lo, range_hi);

	//post("pch-map: lo=", range_lo, "hi=", range_hi, "pch=", pch, "\n");

	//var scale = mm_scales[mm_pch_map_scale]; //FIXME: optimization -> global 'current_scale' var
	//scale = scale.slice(0, mm_pch_map_steps);

	var scale = get_scale();
	//post("pch-map scale:", scale, "\n");

	if (mm_pch_map_quantize) {
		pch = pch - mm_pch_map_root;
		var pc = pch % 12;
		var oct = Math.floor(pch / 12);
		pc = array_nearest(pc, scale);
		pch = oct * 12 + pc;
		pch = pch + mm_pch_map_root;
	}

	// correction for out-of-range pitches
	if (pch < range_lo) {
		pch = pch + 12;
	} else if (pch > range_hi) {
		pch = pch - 12
	} 
	// if after this simple correction the pitch is wrong, just set it to a limit
	if (pch < range_lo) {
		pch = range_lo;
	} else if (pch > range_hi) {
		pch = range_hi
	}

	//post("pch-map after quantize pch=", pch, "\n");

	///...

	// write back to the object
	a.tempx = tempx;
	a.tempy = tempy;
	a.xdecaytime = xdecaytime;
	a.ydecaytime = ydecaytime;

	// send to: "sysX.flocking.to-instr"; <nr_instr> <pitch> <dyn>

	if (!isFinite(y)) y = 0;
	messnamed("sysX.flocking.to-instr", a.id + 1, pch, y);

	// return
}

// rules

function separate(a) {
	var i, dx, dy, proxscale;

	// run from positions of neighbors 
	for (i = 0; i < myagentcount; i++) {
		if (a != agents[i]) {
			dx = agents[i].x - a.x;
			dy = agents[i].y - a.y;

			//torus space
			if (dx > 0.5) dx -= 1.;
			else if (dx < -0.5) dx += 1.;
			//torus space
			if (dy > 0.5) dy -= 1.;
			else if (dy < -0.5) dy += 1.;

			if ((Math.abs(dx) > 0.0001) && (Math.abs(dy) > 0.0001))
				mag = (dx * dx + dy * dy); // cheap mag, no sqrt 
			else
				mag = 0.01;

			if (mag < mysepthresh) {
				if (mag < 0.0001)
					proxscale = 8;
				else
					proxscale = clip(mysepthresh / (mysepthresh - (mysepthresh - mag)), 0, 8);
				a.vx -= dx * myseparation * proxscale;
				a.vy -= dy * myseparation * proxscale;
			}
		}
	}
}

function align(a) {
	var dvx, dvy;

	// conform to velocities towards average velocity 
	dvx = avgvelocity_x - a.vx;
	dvy = avgvelocity_y - a.vy;

	a.vx += dvx * myalignment;
	a.vy += dvy * myalignment;
}

function cohere(a) {
	var dx, dy;

	// move towards center of mass	
	dx = centroid_x - a.x;
	dy = centroid_y - a.y;

	a.vx += dx * mycoherence;
	a.vy += dy * mycoherence;
}

function gravitate(a) {
	var dx, dy;

	// move towards center
	dx = mygravpoint_x - a.x;
	dy = mygravpoint_y - a.y;

	a.vx += dx * mygravity;
	a.vy += dy * mygravity;
}

// -- init function - called at the end of this file
function init() {
	calculate_scale();
	agentcount(4);
	post(getCurrentTimeAsString(), "[OK] sysX.boidroids loaded.\n")
}

// utility functions

function wrap(a) {
	if (a.x < 0) {
		a.x = a.x + 1.;
	} else if (a.x > 1) {
		a.x = a.x - 1.;
	}

	if (a.y < 0) {
		a.y = a.y + 1.;
	} else if (a.y > 1) {
		a.y = a.y - 1.;
	}
}

function bounce(a) {
	if ((a.x < 0) || (a.x > 1)) {
		a.vx = -a.vx;
	}
	if ((a.y < 0) || (a.y > 1)) {
		a.vy = -a.vy;
	}
}

function bounce_clip(a) {
	if ((a.x < 0) || (a.x > 1)) {
		a.vx = -a.vx;
		a.x = clip(a.x, 0, 1);
	}
	if ((a.y < 0) || (a.y > 1)) {
		a.vy = -a.vy;
		a.y = clip(a.y, 0, 1);
	}
}


function clip(x, amin, amax) {
	return Math.min(Math.max(x, amin), amax);
}
clip.local = 1;

function zmap(inval, inlo, inhi, outlo, outhi) {
	var val = Math.min(Math.max(inval, inlo), inhi)
	return outlo + (outhi - outlo) * ((val - inlo) / (inhi - inlo))
}
zmap.local = 1;

function number_scale(inval, inlo, inhi, outlo, outhi) {
	return outlo + (outhi - outlo) * ((inval - inlo) / (inhi - inlo))
}
zmap.local = 1;

/*
 * array_group(asize : Int, anaarray : Array)
 * output: Array of asize-lenght arrays
 * discard last group if it doesn't have proper (asize) length
 */
function array_group(asize, anarray) {
	var len = anarray.length - asize + 1; // discard incomplete last group
	var result = [];
	for (var i = 0; i < len; i += asize) {
		var slice = anarray.slice(i, i + asize)
		result.push(slice);
	}
	return result;
}
array_group.local = 1;

function get_current_millis() {
	return +new Date();
}

function postjs() {
	arrayfromargs(arguments).forEach(function (e) {
		post(JSON.stringify(e), " ");
	});
	post("\n");
}
postjs.local = 1;

function getCurrentTimeAsString() {
	var ct = new Date();
	return "" + ct.getHours() + ":" + ct.getMinutes() + " ";
}

function array_nearest(aval, anarray) {
	var index = 0;
	var current_min_distance = 1000000000;
	anarray.forEach(function (e, i) {
		var current_distance = Math.abs(aval - e);
		if (current_distance < current_min_distance) {
			index = i;
			current_min_distance = current_distance;
		}

	});
	return anarray[index];
}


init();

// var testval = 10+undefined;
// post(isFinite(testval));