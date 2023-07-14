/// @description Insert description here
// You can write your code in this editor

var str = "게임을 시작하려면 SPACE를 누르세요.";

draw_set_alpha(0.5);
var str_w = string_width(str);
var str_h = string_height(str);
draw_set_colour(c_black);
draw_roundrect(x-str_w/2-16,y-str_h/2-8,x+str_w/2+16,y+str_h/2+8,false);
draw_set_alpha(1);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(global.ft_info);
draw_set_colour(c_white);
draw_text_transformed(room_width/2,920,"게임을 시작하려면 SPACE를 누르세요.",scale,scale,angle);