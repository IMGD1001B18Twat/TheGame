event_inherited();

shootStatus--;

if (shootStatus < 1) {
	shootStatus = shootCooldown;
	for (var i = 0; i < irandom_range(1, 3); i++) {
		var projectile = instance_create_layer(x,y,layer, shootType? obj_iceball_dragon : obj_lightningball_dragon);
		with (obj_player) {
			projectile.direction = (pi/180) * (point_direction(other.x,other.y, x, y)+random_range(-other.angle, other.angle));
			//show_debug_message(projectile.direction);
		}
	}
}