/// @description Insert description here
// You can write your code in this editor
draw_self();
if(global.upgrades[my_index] == -1)
{
	image_blend = c_gray;
	draw_self();
	draw_sprite(spr_lock,0,x,y);
}
else
{
	image_blend = c_white;
	draw_self();
}