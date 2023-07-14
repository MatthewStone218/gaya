/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


var str = tuto_text;

	draw_set_alpha((tuto_text_alpha > 0) ? 0.5 : 0);
	draw_set_colour(c_black);
	var str_w = string_width(str);
	var str_h = string_height(str);
	draw_roundrect_ext(room_width/2-str_w/2-16,270-str_h/2-8,room_width/2+str_w/2+16,270+str_h/2+8,32,32,false);
draw_set_alpha(tuto_text_alpha);
draw_title(room_width/2,270,str,c_white);
draw_set_alpha(1);