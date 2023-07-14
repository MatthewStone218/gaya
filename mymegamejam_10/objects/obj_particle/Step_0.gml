/// @description Insert description here
// You can write your code in this editor

image_alpha -= 1/room_speed;
if (image_alpha <= 0)
{
	instance_destroy();
}