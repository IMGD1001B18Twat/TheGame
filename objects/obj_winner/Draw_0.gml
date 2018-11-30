/// @description Insert description here
// You can write your code in this editor

scoreboard = obj_manager.scoreboard
scoreboard_size = ds_map_size(scoreboard)

winner = 0
highest_score = 0
for (i = 0; i < scoreboard_size; i++) {
	player_score = ds_map_find_value(scoreboard,i)
	if (player_score > highest_score) {
		highest_score = player_score
		winner = i
	}
}

draw_text(0,0,"player "+string(i)+" is the winner!")
draw_text(0,128,"press enter to restart")