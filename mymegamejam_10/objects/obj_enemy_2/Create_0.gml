/// @description Insert description here
// You can write your code in this editor
event_inherited();

function advance(target = obj_relic)
{
	if(point_distance(x,y,target.x,target.y) <= attack_dis)
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

function hit_relic()
{
	attacking = 0;
	var incy = instance_create_depth(x,y,depth,obj_arrow);
	incy.speed = 20;
	incy.direction = point_direction(incy.x,incy.y,obj_relic.x,obj_relic.y);
	incy.image_angle = incy.direction;
	incy.atk = 3;
}

max_hp = 20;
hp = max_hp;

spr_normal = spr_enemy_2;
spr_attack = spr_enemy_2_attack;

attack_frame = 8;
attack_frame_end = 10;

attack_dis = 500;

_alarm = 60;