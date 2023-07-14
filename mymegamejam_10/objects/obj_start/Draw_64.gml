/// @description Insert description here
// You can write your code in this editor

var str = "게임을 시작하려면 SPACE를 누르세요.";


draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(global.ft_info);
	draw_set_alpha(0.5);
		draw_set_colour(c_black);
		for(var i=0;i<18;i++) {
			var dt_x = lengthdir_x(1,i*20);
			var dt_y = lengthdir_y(1,i*20);
			draw_text_transformed(x+dt_x,y+dt_y,"게임을 시작하려면 SPACE를 누르세요.",scale,scale,angle);
			
		}
	draw_set_alpha(1);
draw_set_colour(c_white);
draw_text_transformed(x,y,"게임을 시작하려면 SPACE를 누르세요.",scale,scale,angle);