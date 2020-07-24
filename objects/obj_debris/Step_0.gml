/// @description Debris "actions"

image_alpha -= 0.01;

speed -= 0.01;

if(image_alpha <= 0){
	instance_destroy();
}