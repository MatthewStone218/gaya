/// @description Insert description here
// You can write your code in this editor


scale += scale_toggle*(0.25/room_speed);

if (scale < 0.75) {
	scale = 0.75;
	scale_toggle = 1;
}

if (scale > 1) {
	scale = 1;
	scale_toggle = -1;
}

angle += angle_toggle*(2/room_speed);

if (angle < -2) {
	angle = -2;
	angle_toggle = 1;
}

if (angle > 2) {
	angle = 2;
	angle_toggle = -1;
}