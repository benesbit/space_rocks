/// @description Game Room Start

if(room == rm_game){
	spawn_off_camera(obj_asteroid, 15);
	
	//  This will reset the background audio when room starts
	//	if(audio_is_playing(snd_background_music)){
	//		audio_stop_sound(snd_background_music);
	//	}

	// If background music is not playing, start it!
	if(!audio_is_playing(snd_background_music)){
		audio_play_sound(snd_background_music, 3, true);
	}

/*
	// Create Asteroids
	repeat(10){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
*/
	// Start Asteroid Spawn alarm after 60 frames
	alarm[0] = 60;
}