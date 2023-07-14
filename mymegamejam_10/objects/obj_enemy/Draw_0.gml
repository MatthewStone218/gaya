/// @description Insert description here
// You can write your code in this editor
if(hit > 0)
{
	shader_set(shd_white);
	var _xscale = image_xscale/yscale_ratio;
	var _yscale = image_xscale*yscale_ratio;
	draw_sprite_ext(sprite_index,image_index,x+dt_draw_x-30,y+dt_draw_y,_xscale,_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}
else
{
	draw_sprite_ext(sprite_index,image_index,x+dt_draw_x-30,y+dt_draw_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}