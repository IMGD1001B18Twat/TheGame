if (spawnStatus < 1) {
	instance_create_layer(x,y,layer, obj_dragon);
	spawnStatus = spawnTimer;
}
spawnStatus--;