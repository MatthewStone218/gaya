/// @description Insert description here
// You can write your code in this editor

if(sprite_index == spr_enemy_boss_jump)
{
	y = -10000;
	_alarm_jump = 20;
	gravity = 0;
	speed = 0;
	sprite_index = spr_normal;
	image_alpha = 0;
}
else
{
	attacking = 0;
	sprite_index = spr_normal;
}