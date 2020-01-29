/// @description Insert description here
// You can write your code in this editor
master = instance_find(obj_master,0);
paddle = instance_find(obj_ship,0);
magnetic_speed = 4;
magnetic_max = 7;

center_point = instance_find(obj_center,0);
direction = point_direction(center_point.x,center_point.y,x,y) + 90 + irandom_range(-30,0);
image_angle += irandom_range(1,360);
speed = 3;

