/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(_alarm <= 0)
{
	advance();
	if(attack_dis < point_distance(x,y,obj_relic.x,obj_relic.y)){_alarm = 60;}
	else
	{
		_alarm = 180;
	}
}
else
{
	_alarm--;
}