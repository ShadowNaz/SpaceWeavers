/// @description Insert description here
// You can write your code in this editor
direction *= -1;
direction=180-direction;
direction=irandom_range(direction-90,direction+90);

var search_radius=100;
var ball_x=x;
var ball_y=y;

with(obj_hex)
{
		if(point_distance(x,y,ball_x,ball_y)<=search_radius)
		{
			sprite_index = spr_hex_revealed;
		}

}
instance_destroy(other);
