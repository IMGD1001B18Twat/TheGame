if (held >= 0 && instance_exists(held)) {
	instance_destroy(held);	
}

//!Temporary!
if(room == room_game_multiplayer) {
	room_goto(room_skill)
}
else {
	room_goto(room_title)
}