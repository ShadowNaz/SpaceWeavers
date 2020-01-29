/// @description Insert description here
// You can write your code in this editor

screen_shake.shake = true;
screen_shake.alarm[0] = 10;

direction-=180;
direction+=irandom_range(-45,45);
move_outside_solid(direction,2000);

speed = 3;
returning=true;

audio_play_sound(snd_rock,20,false);
instance_destroy(other);


/*var search_radius=100;
var ball_x=x;
var ball_y=y;
var hex_x=other.x;
var hex_y=other.y;

with(obj_hex)
{
		if(point_distance(x,y,ball_x,ball_y)<=search_radius)
		{
			sprite_index = spr_hex_revealed;
		}

}*/