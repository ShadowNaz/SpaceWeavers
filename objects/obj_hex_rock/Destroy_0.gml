/// @description Insert description here
// You can write your code in this editor
switch(mineral)
{
	case "ore":
		instance_create_layer(x,y,"Minerals",obj_mineral_ore)
	break;
	case "metal":
		instance_create_layer(x,y,"Minerals",obj_mineral_metal)
	break;
	case "radioactive":
		instance_create_layer(x,y,"Minerals",obj_mineral_radioactive)
	break;
}