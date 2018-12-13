if (keyboard_check_pressed(vk_enter)) {
	if (selection) {
		with (obj_score) {
			player1Score=0;
			player2Score=0;
		}
		room_goto(room_title);
	}
	else {
		room_goto(irandom_range(0,1)?room_game_multiplayer1: room_game_multiplayer0);
	}
}

if (keyboard_check_pressed(vk_up)) {
	selection = 0;	
}
else if (keyboard_check_pressed(vk_down)) {
	selection = 1;	
}

with (obj_selectarrow) {
	if (other.selection) {
		y = other.c1Y;
		x = other.c1X - string_width(other.choice1);
	}
	else {
		y = other.c2Y;
		x = other.c2X - string_width(other.choice2);
	}
	x-=1.5*sprite_width;
}