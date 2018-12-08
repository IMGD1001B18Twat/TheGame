if (other != holder) {
	if (attackStatus > 0) {
		durability--;
		attackStatus = 0;
		other.hp-=damage;
	}
	else if (throwStatus > 0) {
		throwStatus = 0;
		other.hp-=damage;
	}
	/*
	if (other.hp <= 0) {
		scoreboard_id = obj_manager.scoreboard
		holder_id = holder.player_id
		holder_score = ds_map_find_value(scoreboard_id,holder_id)+1
		ds_map_replace(scoreboard_id,holder_id,holder_score)
	}
	*/
}
