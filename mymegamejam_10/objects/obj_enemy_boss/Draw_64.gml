/// @description Insert description here
// You can write your code in this editor

var ratio = (hp/max_hp);
//

var str = "BOSS";
var str_w = string_width(str);
var str_h = string_height(str);
var colour = (hit > 0) ? c_blue : c_red;
draw_set_color(c_dkgray);
draw_roundrect(960-str_w/2-16,110-str_h/2-8,960+str_w/2+16,110+str_h/2+8,false);
draw_set_color(colour);
draw_roundrect(960-str_w/2-16,110-str_h/2-8,960-str_w/2-16+(str_w+32)*ratio,110+str_h/2+8,false);
draw_title(960,110,str,c_white);

//

var _w = 460;
var _h = 30;
var _margin = 50;

var colour = (hit > 0) ? c_blue : c_red;

draw_set_color(c_dkgrey);
draw_roundrect(960-_w/2,0+_margin,960+_w/2,0+_margin+_h,false);

draw_set_color(colour);
draw_roundrect(960-_w/2,0+_margin,960-_w/2 + _w*ratio,0+_margin+_h,false);
