/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter)) {
	room_goto(selection?room_game_singleplayer : room_game_multiplayer);
}

if (keyboard_check_pressed(vk_up)) {
	selection = 0;	
}
else if (keyboard_check_pressed(vk_down)) {
	selection = 1;	
}

with (obj_selectArrow) {
	if (other.selection) {
		y = other.heightSingleplayer;
		x = other.xSingleplayer;
	}
	else {
		y = other.heightMultiplayer;
		x = other.xMultiplayer;
	}
	x-=1.5*sprite_width;
}