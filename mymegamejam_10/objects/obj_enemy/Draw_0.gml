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

var bar_w = abs(sprite_width);
var bar_h = 6;
var spr_h = abs(sprite_height);
var ratio = hp/max_hp;
draw_set_color(c_dkgray);
draw_rectangle(x+dt_draw_x+dt_draw_x_2-bar_w/2,y+dt_draw_y+dt_draw_y_2-spr_h/2-8-bar_h/2,x+dt_draw_x+dt_draw_x_2+bar_w/2,y+dt_draw_y+dt_draw_y_2-spr_h/2-8+bar_h/2,false);
draw_set_color(c_red);
draw_rectangle(x+dt_draw_x+dt_draw_x_2-bar_w/2,y+dt_draw_y+dt_draw_y_2-spr_h/2-8-bar_h/2,x+dt_draw_x+dt_draw_x_2-bar_w/2+bar_w*ratio,y+dt_draw_y+dt_draw_y_2-spr_h/2-8+bar_h/2,false);