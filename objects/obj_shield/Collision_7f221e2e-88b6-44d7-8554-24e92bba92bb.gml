if (throw_status > 0) {
	if (holder != other) {
		other.hp-=damage;	
	}
}
else {
	event_inherited();	
}