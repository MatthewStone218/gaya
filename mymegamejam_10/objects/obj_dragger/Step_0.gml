/// @description Insert description here
// You can write your code in this editor


var dt_mouse_x = mouse_x - prev_mouse_x;
if (abs(dt_mouse_x) >= 10)
{
	with(obj_upgrade_relic) {
		rotate += dt_mouse_x/2;
	}
}

prev_mouse_x = mouse_x;
prev_mouse_y = mouse_y;