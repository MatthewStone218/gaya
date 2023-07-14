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
	tuto_text_now_index += irandom_range(1,3);
		tuto_text_now_index = min(tuto_text_now_index,string_length(tuto_text));
	tuto_text_now = string_copy(tuto_text,1,tuto_text_now_index);
}


switch(tuto_index) {
	default:	break;
	case 1:
		if keyboard_check_pressed(vk_left) key_left = true;
		if keyboard_check_pressed(vk_right) key_right = true;
		if (key_left && key_right) next();
		break;
	case 2:
		if !instance_exists(obj_enemy) next();
		break;
	case 3:
		if keyboard_check_pressed(ord("X")) key_x += 1;
		if (key_x >= 2) next();
		break;
}