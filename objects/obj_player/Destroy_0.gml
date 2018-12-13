if (held >= 0 && instance_exists(held)) {
	instance_destroy(held);	
}

if(room == room_game_singleplayer) {
	room_goto(room_score_singleplayer);
}
else {
	with (obj_score) {
		if (other.name == "Player 1") {
			player2Score++;
		}
		else {
			player1Score++;
		}
	}
	
	room_goto(room_score_multiplayer);
}