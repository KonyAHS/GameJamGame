/// @description Insert description here
// You can write your code in this editor

reset_variables()
PlayerFunctions()
calulate_movement()

var aimDir=point_direction(x,y,mouse_x,mouse_y)
show_debug_message(string(aimDir))
if(time<=0&&status=="wizzard"){
if(mouse_check_button(mb_left)){
	time=cooldown;
	var _projectile=instance_create_depth(x,y,depth-100,o_projectile)
	with(_projectile){

		dir=aimDir;
	}
	
	
}
}
else
	time--
if(mouse_check_button(mb_right))
	status="wizzard"
			
if(mouse_check_button(mb_middle))
	status="knight"

