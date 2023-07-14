/// @description Insert description here
// You can write your code in this editor
draw_self();

var _w = 200;
var _h = 40;
var _margin = 15;

draw_set_color(c_gray);
draw_roundrect(x-_w/2,y+sprite_height-sprite_yoffset+_margin,x+_w/2,y+sprite_height-sprite_yoffset+_margin+_h,0);

draw_set_color(c_green);
draw_roundrect(x-_w/2,y+sprite_height-sprite_yoffset+_margin,x-_w/2 + _w*(hp/hp_max),y+sprite_height-sprite_yoffset+_margin+_h,0);