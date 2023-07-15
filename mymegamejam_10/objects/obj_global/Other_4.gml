/// @description Insert description here
// You can write your code in this editor

if (room == rm_game_3)
{
	if !audio_is_playing(bgm_boss)
	{
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(bgm_boss,0,true);
	}
}
if (room == rm_game_0 || room == rm_game_1 || room == rm_game_2)
{
	if !audio_is_playing(bgm_game)
	{
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(bgm_game,0,true);
	}
}
if (room == rm_main)
{
	if !audio_is_playing(bgm_main)
	{
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(bgm_main,0,true);
	}
}
if (room == rm_upgrade)
{
	if !audio_is_playing(bgm_upgrade)
	{
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(bgm_upgrade,0,true);
	}
}