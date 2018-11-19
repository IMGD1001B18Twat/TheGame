if (thrower >= 0) {
	if (other != thrower) {
		other.hp-=damage;
		instance_destroy();
	}
}
else if (holder >= 0) {
	if (attackState > 0 && other != holder) {
		attackState = 0;
		other.hp-=damage;
	}
}
else {
	holder = other;
}