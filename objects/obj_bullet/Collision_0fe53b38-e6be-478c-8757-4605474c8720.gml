/// @description Bullet collision with Asteroid

score += 12;

audio_play_sound(snd_boom, 2, false);

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_asteroid_huge){
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} else if(sprite_index == spr_asteroid_medium){
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(12) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}