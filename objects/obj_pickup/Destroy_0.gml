if (creator >= 0 && instance_exists(holder)) {
	creator.spawned = -1;	
}
if (holder >= 0 && instance_exists(holder)) {
	holder.held = -1;	
}