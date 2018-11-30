/// @description Insert description here
// You can write your code in this editor
player1_ready = false
player2_ready = false


power1 = "does 50% more damage"
power2 = "able to fire another \nshot within 2 secs of \nfiring (once for every \npickup)"
power3 = "able to fire another \nshot every 15 secs"
endurance1 = "get 50% more health"
endurance2 = "able to become invincible \nfor 1 sec after taken \nfatal damage, attack does \nno damage when invincible \n(once per life)"
endurance3 = "invincibility has a \ncooldown of 30 secs"
agility1 = "move 20% faster"
agility2 = "able to double jump"
agility3 = "able to dodge, invincible \nwhen dodging (cooldown \n1 sec, 5 per life)"


sub_power = "power"
sub_endurance = "endurance"
sub_agility = "agility"

skilltree_title = "skill tree"

if (obj_manager.current_tier >= 3) {
	room_goto(room_end)
}

