/// @description Insert description here
// You can write your code in this editor


event_inherited();

if(hit > 0){hit--;}
yscale_ratio += (1-yscale_ratio)/2;

///공격판정
if(attacking == 1)
{
	if(image_index >= attack_frame and image_index <= attack_frame_end)
	{
		hit_relic();
	}
}

hp_previous = hp;