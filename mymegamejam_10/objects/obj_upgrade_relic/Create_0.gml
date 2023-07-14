/// @description Insert description here
// You can write your code in this editor


my_index = -1;
for(var i=0;i<instance_number(object_index);i++) {
	if (instance_find(object_index,i) == id) {
		my_index = i;
		break;
	}
}

image_speed = 0;
image_index = my_index;

//초기 rotate, x, y
rotate = 360/instance_number(object_index)*my_index - 15;
x = room_width/2 + lengthdir_x(480,rotate);
y = room_height/2 + lengthdir_y(120,rotate);