if (spawned >= 0) {
}
else if (spawnStatus == spawnTime) {
	spawnStatus = 0;
	spawned = instance_create_layer(x,y,layer, items[irandom(array_length_1d(items)-1)]);
	var angle = astart-random(avar);
	var spd = startSpeed*random(1);
	spawned.vx = cos(angle)*spd;
	spawned.vy = sin(angle)*spd;
	spawned.creator = self;
}
else {
	spawnStatus++;
}