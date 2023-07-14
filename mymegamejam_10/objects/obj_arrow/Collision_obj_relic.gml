/// @description Insert description here
// You can write your code in this editor
obj_relic.hp -= atk;
obj_relic.hit = 8;
if(obj_relic.hp <= 0){game_over();}
instance_destroy();exit;