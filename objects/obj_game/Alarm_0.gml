/// @description Asteroid Spawn

if(room != rm_game){
	exit;
}

/*
// Randomly choose to spawn on horizontal or vertical spawn areas
if(choose(false,true)){
	// Go down the sides
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// Go down top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_asteroid);
*/

spawn_off_camera(obj_asteroid, 1);

// Spawn a new asteroid (alarm calls itself)
alarm[0] = 1*room_speed;