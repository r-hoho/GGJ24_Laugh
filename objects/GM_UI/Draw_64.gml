var relativeX = x; // Relative X position in room coordinates
var relativeY = y; // Relative Y position in room coordinates

// Calculate the scaling factor
var scaleX = 960 / 320;
var scaleY = 540 / 180;

// Calculate the screen coordinates based on the room coordinates and scaling factor
var screenX = relativeX * scaleX;
var screenY = relativeY * scaleY;

// Draw text at the screen coordinates

//draw_set_halign(fa_center);
//draw_text(screenX, screenY, _Translate);

draw_set_halign(fa_left);
draw_text(60*scaleX,150*scaleY,"Total Score: "+string(global._finalscore));
//draw_text(10*scaleX,160*scaleY,"Losing: "+string(_total_loss));

draw_set_halign(fa_center);
draw_text(64*scaleX,110*scaleY,"[1]");
draw_text(159*scaleX,110*scaleY,"[2]");
draw_text(255*scaleX,110*scaleY,"[3]");
draw_text(220*scaleX,150*scaleY,"[R] to Refresh");
