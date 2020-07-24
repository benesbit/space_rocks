/// @description Camera Setup

// Camera
cameraX = 0;
cameraY = 0;
target = obj_ship;

cameraWidth = 500;
cameraHeight = 500;

// Display
displayScale = 2;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);