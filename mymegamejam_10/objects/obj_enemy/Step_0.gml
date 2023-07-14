/// @description Insert description here
// You can write your code in this editor


event_inherited();

if(hit > 0){hit--;}
yscale_ratio += (1-yscale_ratio)/2;


if (hp_previous != hp)
{
	var _dir = (sign(obj_player.x_dir) == -1) ? 180 : 0;
	particle(hp_previous-hp,c_white,random_range(5,7),_dir);
}

hp_previous = hp;