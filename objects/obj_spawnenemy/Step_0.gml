if (spawnStatus < 1 && (multiSpawn || lastSpawned < 0) ) {
	var percent = min(spawned/highestSpawned, 1);
	var enemy = instance_create_layer(x,y,layer, spawns[spawned%array_length_1d(spawns)]);
	lastSpawned = enemy;
	enemy.spawner = self;
	enemy.hp *= 1+percent;
	spawnStatus = spawnTimer*(1.5-percent);
	spawned++;

}
spawnStatus--;