/// @description Insert description here
// You can write your code in this editor


var _w = 460;
var _h = 30;
var _margin = 50;

var colour = (hit > 0) ? c_blue : c_red;

draw_set_color(c_dkgrey);
draw_roundrect(960-_w/2,0+_margin,960+_w/2,0+_margin+_h,false);

draw_set_color(colour);
draw_roundrect(960-_w/2,0+_margin,960-_w/2 + _w*(hp/max_hp),0+_margin+_h,false);
