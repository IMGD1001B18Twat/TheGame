if (throw_status > 0) {
	if (holder != other) {
		audio_play_sound(sou_damage, 1, false);
		other.hp-=(maxDurability-durability) + 1;	
		throw_status = 0;
	}
}