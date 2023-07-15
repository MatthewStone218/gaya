/// @description Insert description here
// You can write your code in this editor
event_inherited();

atk = 10;
max_hp = 84;
hp = max_hp;

tp_stack = 0;

_alarm_jump = -1;

function move_tile_tp(tile)
{
	if(sign(tile.x-x) != 0){x_dir = sign(tile.x-x);}
	//여기도 건들지 마시오
	array_delete(my_tile.entitys,array_get_index(my_tile.entitys,id),1);
	if(array_length(my_tile.entitys) != 0)
	{
		with(my_tile.entitys[0])
		{
			array_delete(my_tile.entitys,array_get_index(my_tile.entitys,id),1);
			set_position();
			array_push(my_tile.entitys,id);
		}
	}
	my_tile = tile;
	set_position();
	array_push(my_tile.entitys,id);
	yscale_ratio = 1.5;
	x = my_tile.x;
	y = my_tile.y;
}

function advance(target = obj_relic)
{
	if(point_distance(x,y,target.x,target.y) <= 400)
	{
		attack();
	}
	else
	{
		var near_dir = instance_nearest(x,y,obj_tile_dir);
		move_tile(instance_nearest(x+lengthdir_x(global.tile_width,near_dir.image_angle),y+lengthdir_y(global.tile_width,near_dir.image_angle),obj_tile));
	}
}


function tp()
{
	sprite_index = spr_enemy_boss_jump;
}

function damaged(){
	tp_stack++;
	if(tp_stack >= 2){tp();tp_stack = 0;}
	hp -= obj_player.atk;
	hit = 8;
	yscale_ratio = 0.5;
	if(hp <= 0)
	{
		instance_destroy();
	}
}

function hit_relic()
{
	attacking = 0;
	var incy = instance_create_depth(x,y,depth,obj_arrow);
	incy.speed = 20;
	incy.direction = point_direction(incy.x,incy.y,obj_relic.x,obj_relic.y);
	incy.image_angle = incy.direction;
	incy.atk = atk;
	incy.sprite_index = spr_arrow_boss;
}

spr_normal = spr_enemy_boss;
spr_attack = spr_enemy_boss_attack;

attack_frame = 14;
attack_frame_end = 18;

_alarm = 80;