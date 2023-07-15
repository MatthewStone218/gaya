// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_over(){
	if (global.game_overed) return;
	show_message_async("Game Over");
	global.game_overed = true;
	audio_play_sound(snd_fail,1,false);
	//return;
}