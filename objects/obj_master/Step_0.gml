/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_space))
{
	distance = point_distance(center_point.x,center_point.y,paddle.x,paddle.y);
	angle = point_direction(center_point.x,center_point.y,paddle.x,paddle.y);
	show_debug_message("Angle "+string(angle)+" Distance "+string(distance));
	
	show_debug_message("current x="+string(paddle.x)+" new x="+string(center_point.x+(distance*cos(degtorad(angle-5)))));
	show_debug_message("current y="+string(paddle.y)+" new y="+string(center_point.y+(distance*sin(degtorad(angle-5)))));
	show_debug_message(string(sin(degtorad(271.01))*305.68));
}
	

if(keyboard_check(vk_left))
{
	distance = point_distance(center_point.x,center_point.y,paddle.x,paddle.y);
	angle = point_direction(center_point.x,center_point.y,paddle.x,paddle.y);
	
	angle -= 1;
	
	paddle.x = cos(degtorad(angle)) * distance;
	paddle.x += center_point.x;
	paddle.y = sin(degtorad(angle)) * distance * -1;
	paddle.y += center_point.y;

	paddle.direction = 90 + point_direction(paddle.x,paddle.y,center_point.x,center_point.y);
	paddle.image_angle = paddle.direction;
	
}
if(keyboard_check(vk_right))
{
	distance = point_distance(center_point.x,center_point.y,paddle.x,paddle.y);
	angle = point_direction(center_point.x,center_point.y,paddle.x,paddle.y);
	
	angle += 1;
	
	paddle.x = cos(degtorad(angle)) * distance;
	paddle.x += center_point.x;
	paddle.y = sin(degtorad(angle)) * distance * -1;
	paddle.y += center_point.y;

	paddle.direction = 90 + point_direction(paddle.x,paddle.y,center_point.x,center_point.y);
	paddle.image_angle = paddle.direction;
}

