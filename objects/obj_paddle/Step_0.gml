/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left))
{
	image_index = spr_paddle_left;
}
else if(keyboard_check(vk_right))
{
	image_index = spr_paddle_right;
}
else
{
	image_index = spr_paddle;
}