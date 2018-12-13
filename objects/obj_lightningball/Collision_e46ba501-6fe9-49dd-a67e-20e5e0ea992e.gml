if (other != shooter) {
	audio_play_sound(sou_electcrack, 1, false);
	other.hp-=damage;
	instance_destroy();
}