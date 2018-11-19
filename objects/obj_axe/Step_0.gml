if (holder >= 0) {
	x=holder.x;
	y=holder.y;
	
	if (attackState > -attackCooldown) {
		attackState--;
		if (attackState == 0) {
			sprite_index = spr_axe;
		}
	}
}
else {
	vy+=grav;
	x+=vx;
	y+=vy;
	
	if (thrower >= 0) {
		throwleft--;
		if (throwleft < 1) {
			instance_destroy();
		}
	}
}