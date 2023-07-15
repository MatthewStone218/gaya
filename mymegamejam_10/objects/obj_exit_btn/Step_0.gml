/// @description Insert description here
// You can write your code in this editor

//버튼으로써의 동작
image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		image_blend = c_ltgray;
	}
	if mouse_check_button_released(mb_left)
	{
		room_goto(rm_stage);
		audio_play_sound(snd_btn,1,false);
	}
}