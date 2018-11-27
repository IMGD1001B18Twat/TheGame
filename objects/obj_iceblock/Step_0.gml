status++;

if (status > killtime) {
	instance_destroy();	
}

var p = min(1, status/maxtime);
var scale = max(1, p*maxsize);

image_xscale=scale;
image_yscale=scale;
