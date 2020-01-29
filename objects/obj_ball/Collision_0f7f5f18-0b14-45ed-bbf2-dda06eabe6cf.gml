/// @description Insert description here
// You can write your code in this editor

//if(!returning)
//{
	audio_play_sound(snd_unbreakable,20,false);
	
	screen_shake.shake = true;
	screen_shake.alarm[0] = 10;

	direction-=180;
	direction+=irandom_range(-20,20);
	move_outside_solid(direction,2000);

	speed = 3;
	returning=true;
//}