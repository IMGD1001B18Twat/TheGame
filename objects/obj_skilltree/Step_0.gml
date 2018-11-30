
p1_skills = obj_manager.player1_skills
p2_skills = obj_manager.player2_skills
c_tier = obj_manager.current_tier

p1_skill_selected = -1
p2_skill_selected = -1

if (keyboard_check_pressed(ord("A"))) {
	p1_skill_selected = 0
} else if (keyboard_check_pressed(ord("W"))) {
	p1_skill_selected = 1
} else if (keyboard_check_pressed(ord("D"))) {
	p1_skill_selected = 2
}

if (p1_skill_selected >= 0) {
	if (ds_map_exists(p1_skills,c_tier)) {
		ds_map_replace(p1_skills,c_tier,p1_skill_selected)
	} else {
		ds_map_add(p1_skills,c_tier,p1_skill_selected)
	}
	player1_ready = true
}



if (keyboard_check_pressed(vk_left)) {
	p2_skill_selected = 0
} else if (keyboard_check_pressed(vk_up)) {
	p2_skill_selected = 1
} else if (keyboard_check_pressed(vk_right)) {
	p2_skill_selected = 2
}

if (p2_skill_selected >= 0) {
	if (ds_map_exists(p2_skills,c_tier)) {
		ds_map_replace(p2_skills,c_tier,p2_skill_selected)
	} else {
		ds_map_add(p2_skills,c_tier,p2_skill_selected)
	}
	player2_ready = true
}


if (player1_ready && player2_ready) {
	obj_manager.current_tier++
	room_goto_next()
}



