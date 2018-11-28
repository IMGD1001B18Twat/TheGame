event_inherited();

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
}
