/// @description Insert description here
// You can write your code in this editor
center_point = instance_find(obj_center,0);
distance = point_distance(x,y,center_point.x,center_point.y);
angle = point_direction(center_point.x,center_point.y,x,y);
angle_offset = irandom_range(0,5) * 60;
sprite_set_speed(sprite_index,0,spritespeed_framespersecond);