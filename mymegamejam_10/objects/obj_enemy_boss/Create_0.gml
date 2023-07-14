/// @description Insert description here
// You can write your code in this editor
event_inherited();

atk = 10;
max_hp = 40;
hp = max_hp;

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