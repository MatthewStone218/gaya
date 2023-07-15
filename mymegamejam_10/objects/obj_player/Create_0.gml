/// @description Insert description here
// You can write your code in this editor

event_inherited();

atk = 3;
attack_delay = 30;

attack_frame = 3;
attack_frame_end = 4;

attacking = 0;
attacked = 0;
attack_delay_alarm = 0;
attack_input_time = 0;
attacked_enemys = {};

yscale_ratio = 1;

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
	
	audio_play_sound(snd_attack,1,false);
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
			with(_list[|i])
			{
				damaged();
				repeat(4)
				{
					var incy = instance_create_depth(x+random(30)-15,y+random(30)-15,-10000,obj_ef_hit);
					incy.speed = 18;
					incy.a = -1;
					incy.alpha_spd = -0.02;
					incy.scale_spd = -0.05;
					incy.direction = 180*(other.x_dir*-1+1)/2+random_range(-25,25);
				}
			}
		}
	}

	ds_list_destroy(_list);
}

return_now_cooldown = 0;
return_cooldown = room_speed*2;


///유물을 통한 스탯 강화
array_foreach(global.upgrades,function(element,index){
	if (element >= 1)
	{
		switch(index) {
			default:	break;
			case 0: //검
				atk += 1*element;
				break;
			case 1: //팔찌
				attack_delay *= power(0.8,element);
				break;
		}
	}
});