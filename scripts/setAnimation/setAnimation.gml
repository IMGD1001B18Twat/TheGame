//Desc: setAnimation: obj_entity int -> boolean

if (argument0.animation < argument1 && argument1 < array_length_1d(argument0.animations)) {
	argument0.animation = argument1;
	object_set_sprite(argument0, argument0.animations[argument1]);
	return true;
}
return false;