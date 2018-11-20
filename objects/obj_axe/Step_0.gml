if (throwStatus == 0) {
	instance_destroy();	
}
else {
	if (holder < 0 || throwStatus > 0) {
		event_inherited();	
		throwStatus--;
	}
	else {
		x = holder.x + holder.sprite_width;
		y = holder.y;
		
		image_xscale = holder.facing;
		
		if (attackStatus == 0) {
			image_index = 0;
		}
		
		if (attackStatus > -attackCooldown) {
			attackStatus--;
		}
		else {
			if ( keyboard_check(holder.ability1) ) {
				attackStatus = attackTime;
				image_index = 1;
			}
			else if ( keyboard_check(holder.ability2)) {
				throwStatus = throwTime;
				vx = cos(throwAngle)*throwSpeed*holder.facing;
				vy = sin(throwAngle)*throwSpeed*(holder.grounded?-1:1);
				
				y-=holder.sprite_height/2;
				
				image_speed = .5;
				holder.held = -1;
			}
		}
	}
}