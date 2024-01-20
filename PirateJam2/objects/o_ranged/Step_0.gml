/// @description Insert description here
// You can write your code in this editor
event_inherited()

//mp_potential_step(PlayerControl.x,PlayerControl.y,move_spd,false)

var aimDir=point_direction(x,y,PlayerControl.x,PlayerControl.y)
show_debug_message(string(aimDir))

if(time<=0){
	time=cooldown;
	var _projectile=instance_create_depth(x,y,depth-100,o_projectile_enemy)
	with(_projectile){

		dir=aimDir;
	}
}
else
time--;
