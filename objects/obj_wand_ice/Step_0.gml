if (holder < 0) {
	event_inherited();	
}
else {
	x = (holder.facing==1?holder.bbox_right:holder.bbox_left) + (holder.sprite_width>>2);
	y = holder.bbox_bottom - ((holder.bbox_bottom - holder.bbox_top)>>1) + (holder.sprite_height>>3);
		
	image_xscale = holder.facing;
	
	if (spell_state > 0) {
		if (spell_state == 1) {
			image_index = 0;	
		}
		spell_state--;
	}
	else {
		if (ball_state > 0) {
			ball_state--;	
		}
		else if (keyboard_check(holder.ability1)) {
			durability--;
			image_index = 1;
			ball_state = ball_cooldown;
			spell_state = spell_cooldown;
			var ball = instance_create_layer(x+holder.sprite_width, y,"Instances", obj_iceball);
			ball.shooter = holder;
			ball.dir = holder.facing;
		}
	
		if (block_state > 0) {
			block_state--;	
		}
		else if (keyboard_check(holder.ability2)) {
			durability--;
			image_index = 2;
			block_state = block_cooldown;
			spell_state = spell_cooldown;
			instance_create_layer(x+holder.sprite_width, y,"Instances", obj_iceblock);
		}
	}
}
