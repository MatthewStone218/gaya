// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stage_clear(){
	with(obj_drawer) {
		if (alarm[0] == -1) alarm[0] = room_speed*2;
		clear = true;
	}
}