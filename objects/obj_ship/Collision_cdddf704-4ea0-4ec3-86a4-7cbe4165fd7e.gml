/// @description Insert description here
// You can write your code in this editor
lives -= 1;

with(obj_game){
	alarm[1] = room_speed;
}
instance_destroy();

repeat(69){
	instance_create_layer(x, y, "Instances", obj_debris);
}