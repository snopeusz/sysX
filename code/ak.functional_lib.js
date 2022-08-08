Array.arithmSeries = function (from, to, by) 
{
	by = by || 1;
	to = to || 1;
	from = from || 0;
	
	var arr=[];
	for(var i=from; i<=to; i=i+by) arr.push(i);
	return arr;
}
	

Array.prototype.randomElement = function() {
	return this[Math.floor(Math.random() * this.length)]
}

Array.prototype.flatten = function() {
  return this.reduce(function(prev, cur) {
    var more = [].concat(cur).some(Array.isArray);
    return prev.concat(more ? cur.flatten() : cur);
  },[]);
};

Array.prototype.min = function() {
    return this.reduce(function (p, v) {
        return (p < v ? p : v);
    });
};

Array.prototype.max = function() {
    return this.reduce(function (p, v) {
        return (p > v ? p : v);
    });
}

Math.clamp = function(a,b,c)
{
	return Math.max(b,Math.min(c,a));
}

Number.prototype.clamp = function(b,c)
{
	return Math.max(b,Math.min(c,this));
}

// linear interpolation
Math.lerp = function (inval, ilo, ihi, olo, ohi) {
    return (inval - ilo) / (ihi - ilo) * (ohi - olo) + olo;
}

// linear interpolation
Number.prototype.lerp = function (ilo, ihi, olo, ohi) {
    return (this - ilo) / (ihi - ilo) * (ohi - olo) + olo;
}



Array.prototype.thin= function() {
    var o = {}, i, l = this.length, r = [];
    for(i=0; i<l;i+=1) o[this[i]] = this[i];
    for(i in o) r.push(o[i]);
    return r;
};
// from: http://www.shamasis.net/2009/09/fast-algorithm-to-find-unique-items-in-javascript-array/

Number.prototype.repeat = function(func) {
  val = 0, num = +this;
  while (val < num) {
    func(val,num);
    val++;
  }
  return num;
}

Number.prototype.collect = function(func) {
  val = 0, num = +this, outarr = [];
  if(func) {
  	while (val < num) {
    	outarr.push(func(val,val,num));
    	val++;
  	}
  } else {
	while (val < num) {
    	outarr.push(val);
    	val++;
  	}
  }
  return outarr;
}

Number.prototype.mtof440 = function ()
{
	return 440.0 * Math.pow(2.0,(+this-69.0)/12.0);
}


Math.mtof440 = function (midipch)
{
	return 440.0 * Math.pow(2.0,(midipch-69.0)/12.0);
}
//mtof.local = 1;

Math.randi = function(amin, amax) {
    if (amax == null) {
      amax = amin;
      amin = 0;
    }
    return amin + Math.floor(Math.random() * (amax - amin + 1));
} // -> underscore.js


post("ak.functional_lib.js loaded.\n");