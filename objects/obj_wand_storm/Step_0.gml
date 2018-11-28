if (holder < 0) {
	event_inherited();	
}
else {
	x = (holder.facing==1?holder.bbox_right:holder.bbox_left) + (holder.sprite_width>>2);
	y = holder.bbox_bottom - ((holder.bbox_bottom - holder.bbox_top)>>1) + (holder.sprite_height>>3);
		
	image_xscale = holder.facing;
	
	if (zappedStatus > 0) {
		for (var i = 0; i < array_length_1d(zapped); i++) {
			var paralyzed = zapped[i];
			if (instance_exists(paralyzed)) {
				//!TODO zappy zappy!
			}
		}
		if (zappedStatus == 1) {
			zapped = 0;
		}
		zappedStatus--;
	}
	
	if (spellStatus > 0) {
		if (spellStatus == 1) {
			image_index = 0;	
		}
		spellStatus--;
	}
	else {
		if (zapStatus > 0) {
			zapStatus--;	
		}
		else {
			if (keyboard_check(holder.ability1)) {
				durability--;
				zapStatus = zapCooldown;
				zappedStatus = zapParalyze;
				spellStatus = sharedCooldown;
				image_index = 1;
				
				var hit = 0;
				with (obj_player) {
					if (self != other.holder
					&& self != other
					&& ( sign(other.holder.facing) == sign( bbox_left+((bbox_right+bbox_left)>>1)-other.x ))
					&& (abs(bbox_bottom-other.y) < other.zapSize
						|| abs(bbox_top-other.y) < other.zapSize
						|| (bbox_top<other.y&&bbox_bottom>other.y))) {
							
						zapped[hit++] = self;
					}
				}
				
			}
		}
		
		if (blastStatus > 0) {
			blastStatus--;
		}
		else {
			if (spellStatus == 0 && keyboard_check(holder.ability2)) {
				durability--;
				blastStatus = blastCooldown;
				spellStatus = sharedCooldown;
				image_index = 2;
				
				
				var bCenterX = x+(holder.facing*blastSize);
				var bCenterY = y;
				
				with (obj_entity) {
					if (self != other.holder && self != other) {
						var oCenterX = bbox_left+((bbox_right-bbox_left)>>1);
						var oCenterY = bbox_top+((bbox_bottom-bbox_top)>>1);
						
						if ( power(bCenterX-oCenterX, 2) + power(bCenterY-oCenterY,2) <= other.blastSizeSq) {
							var dx = oCenterX - other.x;
							var dy = oCenterY - other.y;
							
							var length = sqrt( power(dx,2) + power(dy,2) );
							
							if (length == 0) {
								dx = other.holder.facing;
								dy = 0;
							}
							else {
								dx/=length;
								dy/=length;
							}
							
							vx = dx*other.blastKnockback;
							vy = dy*other.blastKnockback;
						}
					}
				}
				
			}
		}
	}
}