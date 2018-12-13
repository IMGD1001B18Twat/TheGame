event_inherited();

var nearestPlayer = -1;
var smallestDistSq = -1;
with (obj_player) {
	var dx = other.x-x;
	var dy = other.y-y;
	var distSq = dx*dx + dy*dy;
	if (smallestDistSq < 0 || distSq < smallestDistSq) {
		nearestPlayer = self;
		smallestDistSq = distSq;
	}
}

if (nearestPlayer >= 0) {
	var dx = nearestPlayer.x-x;
	var dy = nearestPlayer.y-y;
	
	if (smallestDistSq > 0) {
		var norm = sqrt(smallestDistSq);
		vx += dx/norm*accel;
		vy += dy/norm*accel;
		
		if (abs(vx) > maxspd) {
			vx = maxspd * (vx<0?-1:1);
		}
		if (abs(vy) > maxspd) {
			vy = maxspd * (vy<0?-1:1);	
		}
	}
}

image_yscale = vx>0?-1:1;
attackStatus--;