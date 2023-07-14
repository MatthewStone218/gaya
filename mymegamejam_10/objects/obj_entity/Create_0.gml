/// @description Insert description here
// You can write your code in this editor

my_tile = instance_nearest(x,y,obj_tile);
x = my_tile.x;
y = my_tile.y;

function move(_x_dir,_y_dir)
{
	array_delete(my_tile.entitys,array_get_index(my_tile.entitys,id),1);
	my_tile = instance_nearest(x+(global.tile_width-1)*_x_dir,y+(global.tile_width-1)*_y_dir,obj_tile);
	array_push(my_tile.entitys,id);
	///수정 포인트(좌표 설정)
	//x = my_tile.x;
	//y = my_tile.y;
	gravity_direction = point_direction(x,y,my_tile.x,my_tile.y);
	gravity = 5;
	direction = gravity_direction;
	speed = gravity;
}

function move_tile(tile)
{
	array_delete(my_tile.entitys,array_get_index(my_tile.entitys,id),1);
	my_tile = tile;
	array_push(my_tile.entitys,id);
	///수정 포인트(좌표 설정)
	//x = my_tile.x;
	//y = my_tile.y;
	gravity_direction = point_direction(x,y,my_tile.x,my_tile.y);
	gravity = 5;
	direction = gravity_direction;
	speed = gravity;
}

dt_draw_x = 0;
dt_draw_y = 0;
dist = 0;