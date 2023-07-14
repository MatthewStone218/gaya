/// @description Insert description here
// You can write your code in this editor

event_inherited();

///이동
var _x_dir = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var _y_dir = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

if(_x_dir != 0 or _y_dir != 0) and (speed == 0){move(_x_dir,_y_dir);}