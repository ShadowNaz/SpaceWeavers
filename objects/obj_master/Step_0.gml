/// @description Insert description here
// You can write your code in this editor
if(lives<=0)
	game_end();

switch(room)
{
	case level1:
		if(water>=3)
			room_goto_next();
	break;
	case level2:
		if(water>=3)
			room_goto_next();
	break;
	case level3:
		if(water>=3)
			room_goto_next();
	break;
	case level4:
		if(water>=3)
			room_goto_next();
	break;
	case level5:
		if(water>=3)
			game_end();
	break;
}