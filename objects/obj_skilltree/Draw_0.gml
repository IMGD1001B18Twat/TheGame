/// @description Insert description here
// You can write your code in this editor

draw_set_font(hp_font);
draw_set_color(c_white);
draw_set_halign(fa_left)

column1 = room_width/8
column2 = room_width/8*2
column3 = room_width/8*4
column4 = room_width/8*6
row1 = room_height/8
row2 = room_height/8*2
row3 = room_height/8*4
row4 = room_height/8*6

player1_score = string(ds_map_find_value(obj_manager.scoreboard,0))
player2_score = string(ds_map_find_value(obj_manager.scoreboard,1))

// title and scores
draw_text(room_width/2-string_width(skilltree_title)/2,0,skilltree_title)
draw_text(room_width/6-string_width(player1_score)/2,0,player1_score)
draw_text(room_width/6*5-string_width(player2_score)/2,0,player2_score)

// skilltree titles
draw_text(column2-string_width(sub_power)/2,row1,sub_power)
draw_text(column3-string_width(sub_endurance)/2,row1,sub_endurance)
draw_text(column4-string_width(sub_agility)/2,row1,sub_agility)

// row1
draw_text(column2-string_width(power1)/2,row2,power1)
draw_text(column3-string_width(endurance1)/2,row2,endurance1)
draw_text(column4-string_width(agility1)/2,row2,agility1)

// row2
draw_text(column2-string_width(power2)/2,row3,power2)
draw_text(column3-string_width(endurance2)/2,row3,endurance2)
draw_text(column4-string_width(agility2)/2,row3,agility2)

// row3
draw_text(column2-string_width(power3)/2,row4,power3)
draw_text(column3-string_width(endurance3)/2,row4,endurance3)
draw_text(column4-string_width(agility3)/2,row4,agility3)


single_line_height = string_height("a")
// selector
row_position = 0
switch (obj_manager.current_tier) {
	case 0: 
		row_position = row2+single_line_height
		break
	case 1:
		row_position = row3+single_line_height
		break
	case 2: 
		row_position = row4+single_line_height
		break
}

draw_sprite(spr_selector,0,column1,row_position)

// player1 selected skills
for (i = 0; i < obj_manager.current_tier + 1; i++) {
	if (!ds_map_exists(obj_manager.player1_skills,i)) continue
	player1_skill = ds_map_find_value(obj_manager.player1_skills,i)
	column = 0
	row = 0
	switch (obj_manager.current_tier) {
		case 0:
		row = row2
		break
		case 1:
		row = row3
		break
		case 2:
		row = row4
		break
	}
	switch (player1_skill) {
		case 0:
		column = column2
		break
		case 1:
		column = column3
		break
		case 2:
		column = column4
		break
	}
	p1_selected = "p1"
	draw_text(column-string_width(p1_selected),row-string_height(p1_selected),p1_selected)
}

// player1 selected skills
for (i = 0; i < obj_manager.current_tier + 1; i++) {
	if (!ds_map_exists(obj_manager.player2_skills,i)) continue
	player2_skill = ds_map_find_value(obj_manager.player2_skills,i)
	column = 0
	row = 0
	switch (obj_manager.current_tier) {
		case 0:
		row = row2
		break
		case 1:
		row = row3
		break
		case 2:
		row = row4
		break
	}
	switch (player2_skill) {
		case 0:
		column = column2
		break
		case 1:
		column = column3
		break
		case 2:
		column = column4
		break
	}
	p2_selected = "p2"
	draw_text(column-string_width(p2_selected),row-string_height(p2_selected),p2_selected)
}