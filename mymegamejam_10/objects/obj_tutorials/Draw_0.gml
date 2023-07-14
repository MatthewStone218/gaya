/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


var str = tuto_text;
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	var str_w = string_width(str);
	var str_h = string_height(str);
	draw_rectangle(room_width/2-str_w/2-16,room_height/2-str_h/2-8,room_width/2+str_w/2+16,room_height/2+str_h/2+8,false);
draw_set_alpha(tuto_text_alpha);
draw_title(room_width/2,room_height/2,str,c_white);
draw_set_alpha(1);