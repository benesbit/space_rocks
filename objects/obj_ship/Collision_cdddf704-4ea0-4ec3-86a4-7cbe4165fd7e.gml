/// @description Ship Collision with Asteroid.

lives -= 1;

audio_play_sound(snd_boom, 2, false);

with(obj_game){
	alarm[1] = room_speed;
}
instance_destroy();

repeat(69){
	instance_create_layer(x, y, "Instances", obj_debris);
}

// Asteroid distruction
with(other){
	instance_destroy();
	
	switch(sprite_index){
		// All of the Huge Asteroids
		case spr_asteroid_huge_01:
		case spr_asteroid_huge_02:
			score += 4;
			repeat(2) {
				var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
				new_asteroid.sprite_index = choose(spr_asteroid_medium_01, spr_asteroid_medium_02);
			}
			break;
		// All of the Medium Asteroids
		case spr_asteroid_medium_01:
		case spr_asteroid_medium_02:
			score += 6;
			repeat(2) {
				var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
				new_asteroid.sprite_index = choose(spr_asteroid_small_01, spr_asteroid_small_02);
			}
			break;
		// All of the Small Asteroids
		default:
			score += 10;
			break;
	}
	
	repeat(12) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}