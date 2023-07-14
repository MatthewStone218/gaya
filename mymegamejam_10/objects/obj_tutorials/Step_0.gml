/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


if (tuto_text_alpha < 1)
{
	tuto_text_alpha += 1/(room_speed*0.5);
}


tuto_text_step_now += 1;
if (tuto_text_step_now >= tuto_text_step)
{
	tuto_text_step_now = 0;
	tuto_text_now_index += 1;
		tuto_text_now_index = min(tuto_text_now_index,string_length(tuto_text));
	tuto_text_now = string_copy(tuto_text,1,tuto_text_now_index);
}