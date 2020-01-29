/// @description Insert description here
// You can write your code in this editor

screen_shake.shake = true;
screen_shake.alarm[0] = 10;

direction-=180;
direction+=irandom_range(-45,45);
move_outside_solid(direction,2000);

speed = 3;
returning=true;

if(other.image_index <= 0)
{
	other.image_index = 1;
	audio_play_sound(snd_ice_1,20,false);
}
else
{
	instance_destroy(other);
	audio_play_sound(snd_ice_2,20,false);
}
