/// @description Insert description here
// You can write your code in this editor
if(returning)
{
	angle = point_direction(x,y,paddle.x,paddle.y);
	direction = angle;
	speed = ((speed * magnetic_speed) + magnetic_max) / (magnetic_speed + 1);
}