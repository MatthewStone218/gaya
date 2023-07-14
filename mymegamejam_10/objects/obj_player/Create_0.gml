/// @description Insert description here
// You can write your code in this editor

attacking = 0;

dir = 180;
len = 200;
len_attack_ef = 300;

x = obj_relic.x+lengthdir_x(len,dir);
y = obj_relic.y+lengthdir_y(len,dir);
sprite_index = spr_player_left;

function attack(_dir = dir)
{
	switch(dir)
	{
		case 0: sprite_index = spr_player_right_attack;break;
		case 90: sprite_index = spr_player_up_attack;break;
		case 180: sprite_index = spr_player_left_attack;break;
		case 270: sprite_index = spr_player_down_attack;break;
	}
	
	attacking = 1;
	
	dir = _dir;
	x = obj_relic.x+lengthdir_x(len,dir);
	y = obj_relic.y+lengthdir_y(len,dir);
	
	var incy = instance_create_depth(obj_relic.x+lengthdir_x(len_attack_ef,dir),obj_relic.y+lengthdir_y(len_attack_ef,dir),-10000,obj_ef_attack);
	incy.image_angle = dir;
}