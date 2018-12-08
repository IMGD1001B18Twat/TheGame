event_inherited();

//!All Acceleration in this version is meant to be replaced!
if (jumpStatus > 0) {
	if (!keyboard_check(jump) || vy > 0) {
		jumpStatus = 0;
	}
	else {
		jumpStatus--;
		vy=-jumpSpd;	
	}
	
	if (jumpStatus == 0) {
		canFly = false;	
	}
}
else if (keyboard_check(jump) && grounded) {
	canFly = true;
	jumpStatus = jumpDuration;
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

