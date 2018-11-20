event_inherited();

if (keyboard_check(jump) && grounded) {
	vy = -yspd;
}

var nvx = 0;
if (keyboard_check(left)) {
	nvx -= xspd;
}
if (keyboard_check(right)) {
	nvx += xspd;
}

vx = nvx;
if (nvx != 0) {
	facing = nvx>0?1:-1;	
}
image_xscale = facing;