if (holder < 0) {
	event_inherited();	
}
else {
	if ( !keyboard_check(holder.ability1)) {
		if (pullback>=pullback_min) {
			var arrow = instance_create_layer(x,y,"Instances", obj_arrow);
			var percent = pullback/pullback_max;
			arrow.damage = damage*percent;
			arrow.vx = percent*speed_max*holder.facing;
			arrow.shooter = holder;
		}
		
		if (pullback > 0) {
			pullback = 0;
			durability--;
		}
	}
	else {
		pullback = min(pullback_max, pullback+1);	
	}
}