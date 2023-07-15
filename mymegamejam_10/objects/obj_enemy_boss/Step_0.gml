/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(_alarm_jump == 0)
{
	while(1)
	{
		var incy = instance_find(obj_tile,irandom(instance_number(obj_tile)-1));
		if(point_distance(incy.x,incy.y,obj_relic.x,obj_relic.y) > 400){break;}
	}
	move_tile_tp(incy);
	image_alpha = 1;
	sprite_index = spr_enemy_boss_land;
	_alarm_jump = -1;
}
else
{
	if(_alarm_jump > 0)
	{
		gravity = 0;
		y = -10000;
	}
	_alarm_jump--;
}

if(_alarm_jump <= 0 and sprite_index != spr_enemy_boss_land and sprite_index != spr_enemy_boss_jump and _alarm <= 0)
{
	advance();
	_alarm = 40;
}
else
{
	_alarm--;
}