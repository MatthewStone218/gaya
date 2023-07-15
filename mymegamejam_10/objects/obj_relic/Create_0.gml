/// @description Insert description here
// You can write your code in this editor

x = 960;
y = 540;
hit = 0;

switch(room)
{
	case rm_game_0: image_index = 0;hp_max = 60;break;
	case rm_game_1: image_index = 1;hp_max = 70;break;
	case rm_game_2: image_index = 2;hp_max = 80;break;
	case rm_game_3: image_index = 3;hp_max = 90;break;
}

hp = hp_max;

global.relic_tile = instance_nearest(x,y,obj_tile);

hp_previous = hp;
dt_draw_x = 0;
dt_draw_y = 0;