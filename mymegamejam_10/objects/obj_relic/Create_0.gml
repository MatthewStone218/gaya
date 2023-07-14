/// @description Insert description here
// You can write your code in this editor
hp_max = 100;
hp = hp_max;

hit = 0;

global.relic_tile = instance_nearest(x,y,obj_tile);

hp_previous = hp;
dt_draw_x = 0;
dt_draw_y = 0;