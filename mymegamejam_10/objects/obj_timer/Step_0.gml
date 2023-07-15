/// @description Insert description here
// You can write your code in this editor

if(_alarm <= 0)
{
	if(array_length(timer) >= num+1)
	{
		timer[num]();
		num++;
	}
	else if(_alarm == -1)
	{
		if !instance_exists(obj_enemy)
		{
			stage_clear(1,function() {
				switch(room) {
					default:	break;
					case rm_game_1:
						global.upgrades[1] = 0;
						global.stages[2] = true;
						break;
					case rm_game_2:
						global.upgrades[1] = 0;
						global.stages[3] = true;
						break;
				}
			});
		}
	}
}
_alarm--;