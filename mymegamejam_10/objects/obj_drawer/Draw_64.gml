/// @description Insert description here
// You can write your code in this editor


if (clear)
{
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_victory,0,room_width/2,420);
	//draw_title_large(room_width/2,420,"Stage Cleared!",c_white);
	draw_title(room_width/2,540,"Stage + 1",c_white);
	draw_title(room_width/2,600,"Gold + 1",c_white);
}

if (global.game_overed)
{
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_gameover,0,room_width/2,room_height/2);
}