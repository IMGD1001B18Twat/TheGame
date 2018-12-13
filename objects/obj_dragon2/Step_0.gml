event_inherited();

if (moveStatus < 1) {
	if (moveStatus == 0) {
		vy = spd;
	}
	else if (-moveStatus > height/spd + moveReset) {
		moveStatus = moveCooldown;
		vy = 0;
		vx = 0;
	}
}
else {
	with (obj_player) {
		other.x = x+vx;
		other.y = y-other.height;
	}
}

damageStatus--;
moveStatus--;