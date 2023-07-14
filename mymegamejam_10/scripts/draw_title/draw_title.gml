// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조

function draw_title(xx,yy,str,col) {
	with(obj_drawer) {
		draw_set_font(global.ft_info);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_color(col);
		draw_text(xx,yy,str);
	}
}