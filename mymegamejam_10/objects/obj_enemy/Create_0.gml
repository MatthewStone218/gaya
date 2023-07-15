/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_hp = 1;
hp = max_hp;
atk = 1;

hit = 0;
yscale_ratio = 1.4;

attacking = 0;

function advance(target = obj_relic)
{
	if(point_distance(x,y,target.x,target.y) <= global.tile_width+3)
	{
		attack();
	}
	else
	{
		var _range = 0;//조건에 맞고 가장 목표와 가까운 n+1개의 타일 중에 하나로 이동
	
		var _list = ds_list_create();
		collision_circle_list(x,y,global.tile_width,obj_tile,0,0,_list,0);
	
		ds_list_delete(_list,ds_list_find_index(_list,my_tile));
	
		for(var i = 0; i < ds_list_size(_list); i++)
		{
			if(point_distance(x,y,target.x,target.y) < point_distance(_list[|i].x,_list[|i].y,target.x,target.y))
			{
				ds_list_delete(_list,i);
				i--;
			}
		}
	
	
		for(var i = 0; i < ds_list_size(_list); i++)
		{
			var _sm_num = 0;
			var _sm = 1000000;
			for(var ii = i; ii < ds_list_size(_list); ii++)
			{
				var _dis = point_distance(_list[|ii].x,_list[|ii].y,target.x,target.y);
				if(_sm > _dis)
				{
					_sm = _dis;
					_sm_num = ii;
				}
			}
		
			var temp = _list[|i];
			_list[|i] = _list[|_sm_num];
			_list[|_sm_num] = temp;
		}
	
		for(var i = 3; i < ds_list_size(_list); i++)
		{
			ds_list_delete(_list,i);
		}
	
		if(ds_list_size(_list) != 0)
		{
			move_tile(_list[|irandom(min(_range,ds_list_size(_list)-1))]);
		}
	
		ds_list_destroy(_list);
	}
}

function attack()
{
	if(sign(obj_relic.x-x) != 0){x_dir = sign(obj_relic.x-x);}
	
	attacking = 1;
	sprite_index = spr_attack;
	image_index = 0;
}

function hit_relic()
{
	audio_play_sound(snd_attack,1,false);
	attacking = 0;
	obj_relic.hp -= atk;
	obj_relic.hit = 8;
	if(obj_relic.hp <= 0){game_over();}
}

function damaged(){
	hp -= obj_player.atk;
	hit = 8;
	yscale_ratio = 0.5;
	if(hp <= 0)
	{
		instance_destroy();
	}
}


hp_previous = hp;