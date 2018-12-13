if (holder < 0 || throw_status >= 0) {
	if (throw_status == 0) {
		instance_destroy();	
	}
	else {
		event_inherited();
		throw_status--;
	}
}
else {
	x = holder.x+image_xscale;
	y = holder.y;
		
	image_xscale = holder.facing;
	
	if (parry_status > -parry_cooldown) {
		if (parry_status > 0) {
			if (lastHp < 0) {
				lastHp = holder.hp;	
			}
			else if (holder.hp < lastHp) {
				holder.hp = lastHp;
				durability--;
				parry_status = 0;
			}
		}
		else {
			lastHp = holder.hp;	
		}
		parry_status--;	
	}
	else {
		if (keyboard_check(holder.ability1)) {
			parry_status = parry_frames;	
		}
		else if (keyboard_check(holder.ability2)) {
			throw_status = throw_frames;
			vx = holder.facing * throwspeed;
			vy = 0;
			canFly = true;
		}
	}
}