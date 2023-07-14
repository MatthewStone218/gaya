/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

repeat(10)
{
	var incy = instance_create_depth(x+random(30)-15,y+random(30)-15,-10000,obj_ef_hit);
	incy.speed = 16;
}