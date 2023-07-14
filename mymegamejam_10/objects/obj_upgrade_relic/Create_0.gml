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