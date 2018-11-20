event_inherited();

if (other != holder) {
	if (attackStatus > 0) {
		attackStatus = 0;
		other.hp-=damage;
	}
	else if (throwStatus > 0) {
		attackStatus = 0;
		other.hp-=damage;
	}
}
