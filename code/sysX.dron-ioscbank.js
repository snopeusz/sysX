include("ak.functional_lib.js");

// -------- ATTRIBUTES -------- 
var root = 30;
var octaves = 5;
var scale = [0, 7, 3, 10];
var fdeviation = 0.02;
var randovertones = 3;
var notes = 5;

declareattribute("root",null,null,1);
declareattribute("octaves",null,"setoctaves",1);
declareattribute("scale", null, "setscale", 1);
declareattribute("fdeviation", null, null, 1);
declareattribute("randovertones", null, null, 1);
declareattribute("notes", null, "setnotes", 1);

function setnotes(newval)
{
	newval = Math.clamp(newval, 0, 32)
	if (newval!=notes) notes = newval;
}

function setscale()
{
	scale = arrayfromargs(arguments);
}

function setoctaves(aoctaves)
{
	octaves = Math.clamp(aoctaves, 0, 8);
}

// -------- CALCULATE PARAMETERS -------- 

var ariseries = Array.arithmSeries(1,33);

function bang(notes)
{
	notes = notes || 10;
	var freqs = ariseries
		.slice(0, notes)
		.map(function(e,i,a) {
			return (
				root 
				+ ( 12 * Math.floor(i / notes * octaves) )
				+ scale.randomElement()
			).mtof440() 
			* Math.randi(1,randovertones);
		})
		.sort();
		
	function freqdevamp(arr) {
		return arr.map(function(e,i,a) {
			return e*(Math.random()*fdeviation+(1-fdeviation));
		})
		.map(function(e,i,a) {
			return [e, Math.random()/(i+1)];
		})
		.flatten();
	}

	outlet(0, "set", freqdevamp(freqs)); // -> ioscbank

}
