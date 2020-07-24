/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	
	if(audio_is_playing(Background_Music)){
		audio_stop_sound(Background_Music);
	}
	audio_play_sound(Background_Music, 3, true);
	
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