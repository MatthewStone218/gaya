/// @description Insert description here
// You can write your code in this editor

if(hit > 0)
{
	shader_set(shd_white);
	draw_sprite_ext(sprite_index,image_index,x+dt_draw_x,y+dt_draw_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}
else
{
	draw_sprite_ext(sprite_index,image_index,x+dt_draw_x,y+dt_draw_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}