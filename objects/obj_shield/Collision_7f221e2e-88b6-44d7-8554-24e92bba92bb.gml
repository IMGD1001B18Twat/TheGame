if (throw_status > 0) {
	if (holder != other) {
		other.hp-=(maxDurability-durability);	
		throw_status = 0;
	}
}