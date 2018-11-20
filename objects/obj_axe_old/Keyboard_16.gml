if (holder >= 0 && attackState <= -attackCooldown) {
	sprite_index = spr_axe_attack;
	attackState = attackDuration;
}