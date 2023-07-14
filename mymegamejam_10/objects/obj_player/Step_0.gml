/// @description Insert description here
// You can write your code in this editor

event_inherited();

///이동
var _x_dir = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var _y_dir = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

if(_x_dir != 0 or _y_dir != 0){move(_x_dir,_y_dir);}

///공격

if(keyboard_check_pressed(ord("A"))){attack_input_time = 20;}

if(attack_input_time >= 0)
{
	attack_input_time = 0;
	attack();
}

///공격판정
if(attacking == 1)
{
	if(image_index >= attack_frame and image_index <= attack_frame_end)
	{
		hit_enemy();
	}
}

attack_input_time--;


attack_delay_alarm--;