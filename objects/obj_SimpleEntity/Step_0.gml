if (hp < 1) {
	instance_destroy();
}
else {
	vy+=grav;

	var sw = (bbox_right-bbox_left)>>1;
	var sh = (bbox_bottom-bbox_top)>>1;
	var nx = x+vx;
	var ny = y+vy;
	var ngrounded = false;

	with (obj_static) {
		var sumw= sw+((bbox_right-bbox_left)>>1);
		var sumh = sh+((bbox_bottom-bbox_top)>>1);
		var dx = nx-x;
		var dy = ny-y;
		
		if (abs(dx) <= wsum) {
			nx = ((dx<0?-1:1)*wsum) + x;
			other.vx = 0;
		}
		if (abs(dy) <= sumh) {
			var down = dy<0;
			ny = ((down?-1:1)*sumh) + y;
			other.vx = 0;
			ngrounded |= down;
		}
		
		
	}

	x=nx;
	y=ny;
	grounded = ngrounded;
}