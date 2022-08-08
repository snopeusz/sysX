autowatch = 1;
var g = new Global("sysX_game");

var zapis_gry = [];

function clear() {
	zapis_gry=[];
}

function list() {
	zapis_gry.push(arrayfromargs(arguments));
}

function publish() {
	g.przebieg = zapis_gry;
}

function test() {
	var arglist=arrayfromargs(arguments);
	post(arglist,"\n");
	outlet(0, arglist);
}

function dumptoconsole() {
	if(zapis_gry.length) {
		zapis_gry.forEach(function(e,i) {
			post(i,": ", e, "\n");
		});
	} else {
		post("zapis gry pusty!\n");
	}
}