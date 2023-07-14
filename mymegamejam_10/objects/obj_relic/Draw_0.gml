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

var _w = 1900;
var _h = 20;
var _margin = 10;

var colour = (hit > 0) ? c_red : c_lime;

draw_set_color(c_dkgrey);
draw_roundrect(960-_w/2,0+_margin,960+_w/2,0+_margin+_h,false);

draw_set_color(colour);
draw_roundrect(960-_w/2,0+_margin,960-_w/2 + _w*(hp/hp_max),0+_margin+_h,false);