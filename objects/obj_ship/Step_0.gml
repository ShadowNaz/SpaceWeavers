/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_space) && image_index==0)
{
	image_index = 1;
	instance_create_layer(x,y,"Instances",obj_ball);
}
	
if(keyboard_check(vk_left))
{
	distance = point_distance(center_point.x,center_point.y,x,y);
	angle = point_direction(center_point.x,center_point.y,x,y);
	
	angle -= 1;
	
	x = cos(degtorad(angle)) * distance;
	x += center_point.x;
	y = sin(degtorad(angle)) * distance * -1;
	y += center_point.y;

	direction = -90 + point_direction(x,y,center_point.x,center_point.y);
	image_angle = direction;
	
}

if(keyboard_check(vk_right))
{
	distance = point_distance(center_point.x,center_point.y,x,y);
	angle = point_direction(center_point.x,center_point.y,x,y);
	
	angle += 1;
	
	x = cos(degtorad(angle)) * distance;
	x += center_point.x;
	y = sin(degtorad(angle)) * distance * -1;
	y += center_point.y;

	direction = -90 + point_direction(x,y,center_point.x,center_point.y);
	image_angle = direction;
}

if(keyboard_check(vk_left) || keyboard_check(vk_right))
{
	audio_sound_gain(ship_audio_exhaust, 1, 200);
}
else
{
	audio_sound_gain(ship_audio_exhaust, 0, 200);
}