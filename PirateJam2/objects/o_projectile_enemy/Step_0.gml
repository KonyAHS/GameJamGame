/// @description Insert description here
// You can write your code in this editor
xspd=lengthdir_x(spd,dir);
yspd=lengthdir_y(spd,dir);

x+=xspd
y+=yspd

if ( place_meeting(x,y,collisionBox))
	instance_destroy();