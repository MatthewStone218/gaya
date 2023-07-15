/// @description Insert description here
// You can write your code in this editor

if(_alarm <= 0)
{
	if(array_length(timer) >= num+1)
	{
		timer[num]();
		num++;
	}
	else
	{
		if !instance_exists(obj_enemy)
		{
			stage_clear(1,function() {
				global.upgrades[1] = 0;
			});
		}
	}
}
_alarm--;