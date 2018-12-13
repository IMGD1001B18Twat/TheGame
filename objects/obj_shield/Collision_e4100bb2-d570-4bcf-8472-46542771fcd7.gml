event_inherited();

if (throw_status > 0) {
	if (holder != other) {
		other.hp-=(maxDurability-durability) + 1;	
		throw_status = 0;
	}
}