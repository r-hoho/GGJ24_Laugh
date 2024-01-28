//draw_text(x,y,_Translate);

var relativeX = x; // Relative X position in room coordinates
var relativeY = y-37; // Relative Y position in room coordinates

// Calculate the scaling factor
var scaleX = 960 / 320;
var scaleY = 540 / 180;

// Calculate the screen coordinates based on the room coordinates and scaling factor
var screenX = relativeX * scaleX;
var screenY = relativeY * scaleY;

// Draw text at the screen coordinates

//draw_set_halign(fa_center);
draw_set_halign(fa_center)
draw_text(screenX, screenY, _Translate);
