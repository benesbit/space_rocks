/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left)) {
	image_angle += 5;
}

if(keyboard_check(vk_right)) {
	image_angle -= 5;
}

if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.035);
}

if(keyboard_check_pressed(vk_space)) {
	var bullet_inst = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet_inst.direction = image_angle;
	audio_play_sound(laser_shot, 2, false);
}

if(speed >= 4){
	speed = 4;
}

move_wrap(true, true, sprite_height/2);