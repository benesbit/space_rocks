/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left)) {
	image_angle += 5;
}

if(keyboard_check(vk_right)) {
	image_angle -= 5;
}

if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.025);
}

if(speed > 5){
	speed = 5;
}

move_wrap(true, true, sprite_height/2);