/// @description Follow target

if(instance_exists(target)){
	cameraX = target.x;
	cameraY = target.y;
}

camera_set_view_pos(view_camera[0], cameraX, cameraY);