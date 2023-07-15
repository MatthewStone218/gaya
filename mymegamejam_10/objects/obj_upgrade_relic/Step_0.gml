/// @description Insert description here
// You can write your code in this editor

//버튼으로써의 동작
image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		image_blend = c_ltgray;
	}
	if mouse_check_button_released(mb_left)
	{
		global.selected_upgrade = my_index;
		audio_play_sound(snd_btn,1,false);
	}
}

x = room_width/2 + lengthdir_x(480,rotate);
y = room_height/2 + lengthdir_y(120,rotate);

depth = -y;

if (global.upgrades[my_index] == -1) 
{
	//sprite_index = spr_upgrade_relic_locked;
	sprite_index = spr_upgrade_relic;
	//image_index = 0;
	image_index = my_index;
}
else if (global.upgrades[my_index] == 0) 
{
	sprite_index = spr_upgrade_relic;
	image_index = my_index;
	//image_blend = c_ltgray;
}
else
{
	sprite_index = spr_upgrade_relic;
	image_index = my_index;
	//image_blend = c_white;
}