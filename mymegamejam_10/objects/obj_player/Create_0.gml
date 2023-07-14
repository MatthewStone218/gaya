/// @description Insert description here
// You can write your code in this editor

event_inherited();

atk = 3;
attack_delay = 20;

attack_frame = 3;
attack_frame_end = 4;

attacking = 0;
attacked = 0;
attack_delay_alarm = 0;
attack_input_time = 0;
attacked_enemys = {};

sprite_index = spr_player_right;

function attack()
{	
	attacked_enemys = {};
	if(attack_delay_alarm <= 0)
	{
		attacking = 1;
		attack_delay_alarm = attack_delay;
		sprite_index = spr_player_right_attack;
		image_speed = (sprite_get_number(spr_player_right_attack)*room_speed)/(attack_delay);
	}
}

function hit_enemy()
{
	attacked = 1;
	
	var _list = ds_list_create();

	instance_position_list(x,y,obj_enemy,_list,0);

	for(var i = 0; i < ds_list_size(_list); i++)
	{
		if(attacked_enemys[$ "_"+string(_list[|i])] != 1)
		{
			attacked_enemys[$ "_"+string(_list[|i])] = 1;
			with(_list[|i]){damaged();}
		}
	}

	ds_list_destroy(_list);
}