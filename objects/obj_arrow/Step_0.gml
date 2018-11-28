event_inherited();

if (vx == 0) {
	instance_destroy();	
}
if (vy == 0) {
	if (onGround) {
		instance_destroy();	
	}
	else {
		onGround = true;	
	}
}