/// @description Insert description here
// You can write your code in this editor

audio_stop_all();

with(obj_ui_ore)
	image_alpha = 0;
with(obj_ui_metal)
	image_alpha = 0;
with(obj_ui_radioactive)
	image_alpha = 0;

switch(room)
{
	case level1:
		audio_play_sound(snd_music,1,true);
		audio_play_sound(snd_engine,10,true);
		water-=0;
		with(obj_ui_ore)
			image_alpha = 1;
	break;
	case level2:
		audio_play_sound(snd_music,1,true);
		audio_play_sound(snd_engine,10,true);
		water-=3;
		with(obj_ui_ore)
			image_alpha = 1;
	break;
	case level3:
		audio_play_sound(snd_music,1,true);
		audio_play_sound(snd_engine,10,true);
		water-=4;
		ore=0;
		with(obj_ui_metal)
			image_alpha = 1;
	break;
	case level4:
		audio_play_sound(snd_music,1,true);
		audio_play_sound(snd_engine,10,true);
		water-=3;
		with(obj_ui_metal)
			image_alpha = 1;
	break;
	case level5:
		audio_play_sound(snd_music,1,true);
		audio_play_sound(snd_engine,10,true);
		water-=4;
		metal=0;
		with(obj_ui_radioactive)
			image_alpha = 1;
	break;
}