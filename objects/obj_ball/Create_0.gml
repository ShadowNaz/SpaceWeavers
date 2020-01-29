/// @description Insert description here
// Establish initial variables

paddle = instance_find(obj_ship,0);
screen_shake = instance_find(obj_screen_shake,0);
direction = paddle.direction+90;
speed = 20;
magnetic_speed = 4;
magnetic_max = 7;
returning = false;
