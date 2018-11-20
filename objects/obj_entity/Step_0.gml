vy+=grav;

var topBox = y-bbox_top;
var botBox = bbox_bottom-y;
var leftBox = x-bbox_left;
var rightBox = bbox_right-x;

var nx = x+vx;
var ny = y+vy;
var ngrounded = false;

with (obj_static) {
	
	var botTop = topBox+y-bbox_top;
	var topBot = botBox+bbox_bottom-y;
	var rightLeft = rightBox+x-bbox_left;
	var leftRight = leftBox+bbox_right-x;
	
	var dx = other.x-x;
	var dy = other.y-y;
	
	var alignedY = dy<0? -dy < botTop-1 : dy < topBot-1;
	var alignedX = dx<0? -dx < rightLeft-1 : dx < leftRight-1;
	
	if (dx < 0) {
		if (nx > x-rightLeft && alignedY) {
			nx = x-rightLeft;
			other.vx = 0;
		}
	}
	else {
		if (nx < x+leftRight && alignedY) {
			nx = x+leftRight;
			other.vx = 0;
		}
	}
	
	if (dy < 0) {
		if (ny > y-botTop && alignedX) {
			ny = y-botTop;
			other.vy = 0;
			ngrounded = true;
		}
	}
	else {
		if (ny < y+topBot && alignedX) {
			ny = y+topBot;
			other.vy = 0;
		}
	}		
}


x=nx;
y=ny;
grounded = ngrounded;

if (y > room_height) {
	instance_destroy();
}