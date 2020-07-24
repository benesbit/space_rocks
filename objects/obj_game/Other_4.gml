/// @description Game Room Start

if(room == rm_game){

//  This will reset the background audio when room starts
//	if(audio_is_playing(Background_Music)){
//		audio_stop_sound(Background_Music);
//	}
	// If background music is not playing, start it!
	if(!audio_is_playing(Background_Music)){
		audio_play_sound(Background_Music, 3, true);
	}
	
	// Create Asteroids
	repeat(7){
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
	
	alarm[0] = 60;
}