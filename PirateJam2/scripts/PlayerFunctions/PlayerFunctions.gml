

function reset_variables(){
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}

function PlayerFunctions(){
	if keyboard_check_pressed(ord("A")) left = 1;
	if keyboard_check_pressed(ord("D")) right = 1;
	if keyboard_check_pressed(ord("W"))	up = 1;
	if keyboard_check_pressed(ord("S")) down = 1;
}	

function calulate_movement(){
	var _horizontalMove = (right - left);
	var _verticalMove = (down - up);

	if _horizontalMove != 0 or _verticalMove != 0{
		var _direction = point_direction(0, 0, _horizontalMove, _verticalMove);

		_horizontalMove = lengthdir_x(walking_speed, _direction);
		_verticalMove = lengthdir_y(walking_speed, _direction);

		x += _horizontalMove;
		y += _verticalMove;
	}
}

function collision(){
	var _goalX = x;
	var _goalY = y;

	x = xprevious;
	y = yprevious;

	var _distancex = abs(_goalX - x);
	var _distancey = abs(_goalY - y);

	repeat(_distancex){
		if place_meeting(x + sign(_goalX - x), y, o_solid)
		x += sign(_goalX - x);
	}

	repeat(_distancey){
		if place_meeting(x, y + sign(_goalY - y), o_solid)
		y += sign(_goalY - y);
	}
}