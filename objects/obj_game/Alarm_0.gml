/// @description Create Asteroid

if(room != rm_game){
	exit;
}

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

alarm[0] = 4*room_speed;