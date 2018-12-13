if (attackStatus < 1) {
	audio_play_sound(sou_damage, 1, false);
	other.hp-=damage;
	attackStatus = attackCooldown;
}