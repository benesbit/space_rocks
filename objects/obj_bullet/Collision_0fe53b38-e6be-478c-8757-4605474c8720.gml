/// @description Bullet collision with Asteroid

// score += 12;

audio_play_sound(snd_boom, 2, false);

instance_destroy();

with(other){
	instance_destroy();
	
	switch(sprite_index){
		case spr_asteroid_huge_01:
		case spr_asteroid_huge_02:
			score += 4;
			repeat(2) {
				var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
				new_asteroid.sprite_index = spr_asteroid_medium_01;
			}
			break;
		case spr_asteroid_medium_01:
			score += 6;
			repeat(2) {
				var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
				new_asteroid.sprite_index = choose(spr_asteroid_small_01, spr_asteroid_small_02);
			}
			break;
		default:
			score += 10;
			break;
	}
	
	repeat(12) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}