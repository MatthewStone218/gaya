/// @description Insert description here
// You can write your code in this editor

if(_alarm <= 0)
{
	if(array_length(timer) >= num+1)
	{
		timer[num]();
		num++;
	}
}
_alarm--;