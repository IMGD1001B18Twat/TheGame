if (status < 1) {
	instance_destroy();	
} else {
	x+=vx;
	vx = dir*spd;
}