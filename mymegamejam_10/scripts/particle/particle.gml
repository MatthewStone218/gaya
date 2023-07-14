// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particle(count,colour,scale,dir){
	repeat(count) {
		var cr_x = x+lengthdir_x(random_range(-16,16),irandom(359));
		var cr_y = y+lengthdir_y(random_range(-16,16),irandom(359));
		var ins = instance_create_depth(cr_x,cr_y,depth+1,obj_particle);
		with(ins)
		{
			color = colour;
			radius = scale;
			direction = dir + random_range(-25,25);
			speed = random_range(1,7);
		}
	}
}