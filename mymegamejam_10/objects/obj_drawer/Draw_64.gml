/// @description Insert description here
// You can write your code in this editor


if (clear)
{
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	
	draw_title_large(room_width/2,room_height/2,"Stage Cleared!",c_white);
}