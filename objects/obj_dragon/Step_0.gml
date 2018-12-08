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
	
	image_angle = point_direction(x,y,nearestPlayer.x, nearestPlayer.y) - 90;
	
	if (smallestDistSq > 0) {
		var norm = sqrt(smallestDistSq);
		vx += dx/norm*accel;
		vy += dy/norm*accel;
		
		if (abs(vx) > maxspd) {
			vx = maxspd * (vx<0?-1:1);
		}
		if (abs(vy) > maxspd) {
			vx = maxspd * (vy<0?-1:1);	
		}
	}
}
attackStatus--;