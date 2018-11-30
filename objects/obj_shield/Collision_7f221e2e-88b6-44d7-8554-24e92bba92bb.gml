if (throw_status > 0) {
	if (holder != other) {
		other.hp-=damage/durability;	
		throw_status = 0;
	}
}
else {
	event_inherited();	
}