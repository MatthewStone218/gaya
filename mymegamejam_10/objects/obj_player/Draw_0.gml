/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

draw_sprite_ext(sprite_index,image_index,x+dt_draw_x+dt_draw_x_2,y+dt_draw_y+dt_draw_y_2,image_xscale*x_dir,image_yscale*yscale_ratio,image_angle,image_blend,image_alpha);


draw_set_colour(c_blue);
draw_triangle(x+dt_draw_x+dt_draw_x_2,y+dt_draw_y+dt_draw_y_2-abs(sprite_height/2)-8-8,x+dt_draw_x+dt_draw_x_2+8,y+dt_draw_y+dt_draw_y_2-abs(sprite_height/2)-8-16,x+dt_draw_x+dt_draw_x_2-8,y+dt_draw_y+dt_draw_y_2-abs(sprite_height/2)-8-16,false);