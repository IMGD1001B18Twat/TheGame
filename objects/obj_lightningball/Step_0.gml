if (status < 1) {
	instance_destroy();	
} else {
	x+= cos(direction)*spd;
	y+= -sin(direction)*spd;
	status--;
}