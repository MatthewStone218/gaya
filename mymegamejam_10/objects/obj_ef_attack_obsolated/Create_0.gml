/// @description Insert description here
// You can write your code in this editor

var _list = ds_list_create();

instance_position_list(x,y,obj_enemy,_list,0);

for(var i = 0; i < ds_list_size(_list); i++)
{
	with(_list[|i]){damaged();}
}

ds_list_destroy(_list);