/// @description Insert description here
// You can write your code in this editor


if mouse_check_button_pressed(mb_left)
{
	prev_mouse_x = mouse_x;
	prev_mouse_y = mouse_y;
}
if mouse_check_button(mb_left)
{
	var dt_mouse_x = mouse_x - prev_mouse_x;
	if (abs(dt_mouse_x) >= 1)
	{
		with(obj_upgrade_relic) {
			rotate += dt_mouse_x/4;
		}
	}

	prev_mouse_x = mouse_x;
	prev_mouse_y = mouse_y;
}