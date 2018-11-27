event_inherited();

//!All Acceleration in this version is meant to be replaced!

if (keyboard_check(jump) && grounded) {
	vy = -jumpSpd;
}
vx*=xFriction;

var dir = 0;
if (keyboard_check(left)) {
	dir -= 1;
}
if (keyboard_check(right)) {
	dir += 1;
}

if (dir != 0) {
	if (dir < 0) {
		facing = -1;
		image_xscale = facing;
		if (vx > -vxMax) {
			vx = max(vx-(vx>0?xAccelOpp:xAccel), -vxMax);
		}
	}
	else {
		facing = 1;	
		image_xscale = facing;
		if (vx < vxMax) {
			vx = min(vx+(vx<0?xAccelOpp:xAccel), vxMax);
		}
	}
}

