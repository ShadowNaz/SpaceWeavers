/// @description Insert description here
// You can write your code in this editor
center_point = instance_find(obj_center,0);

distance = point_distance(x,y,center_point.x,center_point.y);
angle = point_direction(center_point.x,center_point.y,x,y);