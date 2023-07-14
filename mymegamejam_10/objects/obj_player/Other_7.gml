/// @description Insert description here
// You can write your code in this editor
if(attacking == 1)
{
	attacking = 0;
	switch(dir)
	{
		case 0: sprite_index = spr_player_right;break;
		case 90: sprite_index = spr_player_up;break;
		case 180: sprite_index = spr_player_left;break;
		case 270: sprite_index = spr_player_down;break;
	}
}