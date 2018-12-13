if (holder < 0 && other.held < 0) {
	audio_play_sound(sou_getPickup, 1, false);
	holder = other;
	other.held = self;
}