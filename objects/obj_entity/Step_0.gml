//Health checks
if (isDead) {
	if (animation != 5) {
		instance_destroy(self);
	}
}
else {
	if (hp <= 0) {
		isDead = true;
		setAnimation(self, 4);
	}
	else {
		//Progress gravity
		if (grounded) {
			vy+=grav;
		}
		//Physics
		var nx = x+vx;
		var ny = y+vy;
		
		//TODO maybe ease the stopping in order to have more precision? Could be cool
		with (obj_static) {
			if (other.place_meeting(nx, 0, self)) {
				nx = x;
				vx = 0;
				break;
			}
		}
		with (obj_static) {
			if (other.place_meeting(0, ny, self)) {
				ny = y;
				vy = 0;
				break;
			}
		}
		
		x = nx;
		y = ny;
	}
}

//TODO image speed?

//Animation progression/updates
if (sprite_index < 0 or image_index >= image_number-1) {
	animation = -1;
	setAnimation(self, 0);
}

if (hp < oldHp ) {
	setAnimation(self, 3);
}
if (vx != 0) {
	setAnimation(self, 2);
}
if (vy != 0) {
	setAnimation(self, 1);
}
setAnimation(self, 0);

oldHp = hp;