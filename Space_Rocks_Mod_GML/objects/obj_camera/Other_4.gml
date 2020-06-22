/// @description Camera Setup

//Camera
global.cameraX = 0;
global.cameraY = 0;
target = obj_ship;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

//This function relates to the camera itself. It's what the player is going inside de game universe.
camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

//Display
displayScale = 2;
displayWidth = (global.cameraWidth * displayScale);
displayHeight = (global.cameraHeight * displayScale);

//This function relates to the window of the game - like the viewport.
//It defines the size of the screen in which the camera is going to be displayed.
window_set_size(displayWidth, displayHeight);
//This function defines the size of the surface that is going to be captured by the camera.
surface_resize(application_surface, displayWidth, displayHeight);

//GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);

alarm[0] = 1;