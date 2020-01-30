/// @description Insert description here
// You can write your code in this editor
if(lives<=0)
	game_end();

with(obj_ui_live)
	if(lives >= count)
		image_alpha = 1;
	else if(lives < count)
		image_alpha = 0;

var room_complete = true;
if instance_exists(obj_hex_ice)
	room_complete = false;
if instance_exists(obj_mineral_ice)
	room_complete = false;
if instance_exists(obj_mineral_ore)
	room_complete = false;
if instance_exists(obj_mineral_metal)
	room_complete = false;
if instance_exists(obj_mineral_radioactive)
	room_complete = false;
with(obj_hex_rock)
	if(mineral!="none")
		room_complete = false;

switch(room)
{
	case level1:
		if(room_complete)
			if(water>=3 && ore>=3)
				room_goto_next();
			else if (water<3)
				room_goto(game_no_fuel);
			else
				room_goto(game_no_mineral);
	break;
	case level2:
		if(room_complete)
			if(water>=3 && ore>=6)
				room_goto_next();
			else if (water<3)
				room_goto(game_no_fuel);
			else
				room_goto(game_no_mineral);
	break;
	case level3:
		if(room_complete)
			if(water>=3 && metal>=3)
				room_goto_next();
			else if (water<3)
				room_goto(game_no_fuel);
			else
				room_goto(game_no_mineral);
	break;
	case level4:
		if(room_complete)
			if(water>=4 && metal>=6)
				room_goto_next();
			else if (water<4)
				room_goto(game_no_fuel);
			else
				room_goto(game_no_mineral);
	break;
	case level5:
		if(room_complete)
			if(water>=4 && radioactive>=4)
				room_goto(game_win);
			else if (water<4)
				room_goto(game_no_fuel);
			else
				room_goto(game_no_mineral);
	break;
}

var water_count = water;
var ore_count=ore;
var metal_count=metal;
var radioactive_count=radioactive;

with(obj_ui_bar)
	switch(mineral)
	{
		case "water":
			if(water_count >= count)
				image_alpha = 1;
		break;
		case "ore":
			if(ore_count >= count)
				image_alpha = 1;
		break;
		case "metal":
			if(metal_count >= count)
				image_alpha = 1;
		break;
		case "radioactive":
			if(radioactive_count >= count)
				image_alpha = 1;
		break;
	}
		