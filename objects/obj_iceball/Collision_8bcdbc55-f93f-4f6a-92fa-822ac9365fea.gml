if (other != shooter) {
	other.hp-=damage;
	other.vx = 0;
	other.vy = 0;
	instance_destroy();
}