/// @description Insert description here
// You can write your code in this editor

with(obj_ui_left)
	image_alpha = 0;
with(obj_ui_launch)
	image_alpha = 0;
with(obj_ui_right)
	image_alpha = 0;

if(keyboard_check(vk_space))
{
	with(obj_ui_launch)
		image_alpha = 1;
}

if(keyboard_check(vk_space) && image_index==0)
{
	image_index = 1;
	instance_create_layer(x,y,"Instances",obj_ball);
	audio_play_sound(snd_laser,20,false);
}
	
if(keyboard_check(vk_left))
{
	with(obj_ui_left)
		image_alpha = 1;
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
	with(obj_ui_right)
		image_alpha = 1;
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