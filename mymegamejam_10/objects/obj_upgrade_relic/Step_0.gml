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
		//if (global.upgrades[my_index] == -1) exit;
		global.selected_upgrade = my_index;
		audio_play_sound(snd_btn,1,false);
	}
}

if(global.selected_upgrade == my_index)
{
	//if (global.upgrades[my_index] == -1) exit;
	switch(my_index)
	{
		case 0: obj_relic_status.text = $"환두대도\n공격력 {global.upgrades[0]+3} → {global.upgrades[0]+4}"; break;
		case 1: obj_relic_status.text = $"팔찌\n공격 속도 {global.upgrades[1]+1.5} → {-global.upgrades[1]*0.05+1.5}"; break;
		case 2: obj_relic_status.text = $"금관\n귀환 쿨타임 {4+global.upgrades[2]} → {4+global.upgrades[2]-0.1}"; break;
		case 3: obj_relic_status.text = $"뿔잔\n유물 내구도 {60} → {70}"; break;
		case 4: obj_relic_status.text = $"귀걸이\n유물 회복 {0} → {3}"; break;
	}
}

x = room_width/2 + lengthdir_x(480,rotate);
y = 360 + lengthdir_y(120,rotate);

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