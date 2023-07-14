/// @description Insert description here
// You can write your code in this editor
if(hit > 0)
{
	shader_set(shd_white);
	var _xscale = image_xscale/yscale_ratio;
	var _yscale = image_xscale*yscale_ratio;
	draw_sprite_ext(sprite_index,image_index,x+dt_draw_x+dt_draw_x_2,y+dt_draw_y+dt_draw_y_2,_xscale*x_dir,_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}
else
{
	draw_sprite_ext(sprite_index,image_index,x+dt_draw_x+dt_draw_x_2,y+dt_draw_y+dt_draw_y_2,image_xscale*x_dir,image_yscale,image_angle,image_blend,image_alpha);
}


draw_set_colour(c_red);
draw_triangle(x+dt_draw_x+dt_draw_x_2,y+dt_draw_y+dt_draw_y_2-abs(sprite_height/2)-8-8,x+dt_draw_x+dt_draw_x_2+8,y+dt_draw_y+dt_draw_y_2-abs(sprite_height/2)-8-16,x+dt_draw_x+dt_draw_x_2-8,y+dt_draw_y+dt_draw_y_2-abs(sprite_height/2)-8-16,false);