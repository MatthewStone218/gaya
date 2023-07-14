/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(_alarm <= 0)
{
	advance();
	_alarm = 150;
}
else
{
	_alarm--;
}