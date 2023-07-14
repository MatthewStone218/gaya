/// @description Insert description here
// You can write your code in this editor


event_inherited();

if(hit > 0){hit--;}
yscale_ratio += (1-yscale_ratio)/2;


if (hp_previous != hp)
{
	var _dir = point_direction(obj_player.x,obj_player.y,x,y);
	particle(hp_previous-hp,c_white,random_range(3,5),_dir);
}

hp_previous = hp;