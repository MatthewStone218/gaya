/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(global.ft_info);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x,y,text);

if (text == "") exit;
draw_sprite_ext(spr_icon_gold,0,922,822,0.5,0.5,0,c_white,1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(1006,822,string(1));