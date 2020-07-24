/// @description Follow target

if(instance_exists(target)){
	cameraX = target.x - (cameraWidth/2);
	cameraY = target.y - (cameraHeight/2);
	
	// Stops camera on edge of screen, so that it doesn't
	// pan past warp boundary.
	cameraX = clamp(cameraX, 0, room_width - cameraWidth);
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
}

camera_set_view_pos(view_camera[0], cameraX, cameraY);