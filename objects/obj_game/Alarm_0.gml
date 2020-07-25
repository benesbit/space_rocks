/// @description Asteroid Spawn

if(room != rm_game){
	exit;
}

spawn_off_camera(obj_asteroid, 1);

// Spawn a new asteroid (alarm calls itself)
alarm[0] = 1*room_speed;