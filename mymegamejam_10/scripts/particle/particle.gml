// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particle(count,colour,scale){
	repeat(count) {
		var cr_x = lengthdir_x(random_range(-16,16),irandom(359));
		var cr_y = lengthdir_y(random_range(-16,16),irandom(359));
		var ins = instance_create_depth(cr_x,cr_y,depth-1,obj_particle);
		with(ins)
		{
			color = colour;
			scale = scale;
			direction = irandom(359);
			speed = random_range(3,7);
		}
	}
}