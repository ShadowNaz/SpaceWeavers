/// @description Insert description here
// You can write your code in this editor
sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
ship_audio_exhaust = audio_play_sound(snd_exhaust,30,true);
audio_sound_gain(ship_audio_exhaust, 0, 0);

center_point = instance_find(obj_center,0);
paddle = instance_find(obj_ship,0);

distance = point_distance(center_point.x,center_point.y,x,y);
angle = point_direction(center_point.x,center_point.y,x,y);
	
x = cos(degtorad(angle)) * distance;
x += center_point.x;
y = sin(degtorad(angle)) * distance * -1;
y += center_point.y;

direction = -90 + point_direction(x,y,center_point.x,center_point.y);
image_angle = direction;