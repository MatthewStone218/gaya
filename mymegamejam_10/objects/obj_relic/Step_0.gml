/// @description Insert description here
// You can write your code in this editor
if(hit > 0){hit--;}

if (hp_previous != hp)
{
	with(obj_shaker) shake_display(5);
	with(obj_shaker) shake(other.id,10);
}
hp_previous = hp;