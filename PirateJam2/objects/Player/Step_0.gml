/// @description Insert description here
// You can write your code in this editor

reset_variables()
PlayerFunctions()
calulate_movement()

var aimDir=point_direction(x,y,mouse_x,mouse_y)
show_debug_message(string(aimDir))
if(mouse_check_button(mb_left)){
	
	var _projectile=instance_create_depth(x,y,depth-100,o_projectile)
	with(_projectile){

		dir=aimDir;
	}
}
