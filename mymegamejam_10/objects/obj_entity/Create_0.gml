/// @description Insert description here
// You can write your code in this editor

my_tile = instance_nearest(x,y,obj_tile);
x = my_tile.x;
y = my_tile.y;

function set_position()
{
	if(array_length(my_tile.entitys) == 0)
	{
		dt_draw_x_2_target = 0;
		dt_draw_y_2_target = 0;
	}
	else
	if(object_index == obj_player)
	{
		if(x < my_tile.x)
		{
			dt_draw_x_2_target = -30;
			x_dir = 1;
			for(var i = 0; i < array_length(my_tile.entitys); i++)
			{
				my_tile.entitys[i].x_dir = -1;
			}
			
			if(array_length(my_tile.entitys) == 1)
			{
				my_tile.entitys[0].dt_draw_x_2_target = 30;
				my_tile.entitys[0].dt_draw_y_2_target = 0;
			}
			else if(array_length(my_tile.entitys) == 2)
			{
				my_tile.entitys[0].dt_draw_x_2_target = 30;
				my_tile.entitys[0].dt_draw_y_2_target = -25;
				my_tile.entitys[1].dt_draw_x_2_target = 30;
				my_tile.entitys[1].dt_draw_y_2_target = 25;
			}
		}
		else if(x > my_tile.x)
		{
			dt_draw_x_2_target = 30;
			
			x_dir = -1;
			for(var i = 0; i < array_length(my_tile.entitys); i++)
			{
				my_tile.entitys[i].x_dir = 1;
			}
			
			if(array_length(my_tile.entitys) == 1)
			{
				my_tile.entitys[0].dt_draw_x_2_target = -30;
				my_tile.entitys[0].dt_draw_y_2_target = 0;
			}
			else if(array_length(my_tile.entitys) == 2)
			{
				my_tile.entitys[0].dt_draw_x_2_target = -30;
				my_tile.entitys[0].dt_draw_y_2_target = -25;
				my_tile.entitys[1].dt_draw_x_2_target = -30;
				my_tile.entitys[1].dt_draw_y_2_target = 25;
			}
		}
		else
		{
			dt_draw_x_2_target = -30*x_dir;
			
			for(var i = 0; i < array_length(my_tile.entitys); i++)
			{
				my_tile.entitys[i].x_dir = x_dir*-1;
				my_tile.entitys[i].dt_draw_x_2_target = -30*x_dir;
			}
			
			if(array_length(my_tile.entitys) == 1)
			{
				my_tile.entitys[0].dt_draw_y_2_target = 0;
			}
			else if(array_length(my_tile.entitys) == 2)
			{
				my_tile.entitys[0].dt_draw_y_2_target = -25;
				my_tile.entitys[1].dt_draw_y_2_target = 25;
			}
		}
	}
	else
	{
		if(array_get_index(my_tile.entitys,obj_player.id) != -1)
		{
			if(obj_player.x_dir == 1)
			{
				obj_player.dt_draw_x_2_target = -30;
				obj_player.dt_draw_y_2_target = 0;
				dt_draw_x_2_target = 30;
				if(array_length(my_tile.entitys) >= 2)
				{
					var incy = my_tile.entitys[0];
					if(my_tile.entitys[0] == obj_player.id)
					{
						incy = my_tile.entitys[1];
					}
					
					incy.dt_draw_x_2_target = 30;
					incy.dt_draw_y_2_target = 30;
					dt_draw_y_2_target = -30;
				}
				else
				{
					dt_draw_y_2_target = 0;
				}
			}
			else
			{
				obj_player.dt_draw_x_2_target = 30;
				obj_player.dt_draw_y_2_target = 0;
				dt_draw_x_2_target = -30;
				if(array_length(my_tile.entitys) >= 2)
				{
					var incy = my_tile.entitys[0];
					if(my_tile.entitys[0] == obj_player.id)
					{
						incy = my_tile.entitys[1];
					}
					
					incy.dt_draw_x_2_target = -30;
					incy.dt_draw_y_2_target = -30;
					dt_draw_y_2_target = 30;
				}
				else
				{
					dt_draw_y_2_target = 0;
				}
			}
		}
		else
		{
			switch(array_length(my_tile.entitys))
			{
				case 0: dt_draw_x_2_target = 0; dt_draw_y_2_target = 0;
				break;
				case 1:
					if(x > my_tile.entitys[0].x)
					{
						my_tile.entitys[0].dt_draw_x_2_target = -30;
						my_tile.entitys[0].dt_draw_y_2_target = 0;
						dt_draw_x_2_target = 30;
						dt_draw_y_2_target = 0;
					}
					else
					{
						my_tile.entitys[0].dt_draw_x_2_target = 30;
						my_tile.entitys[0].dt_draw_y_2_target = 0;
						dt_draw_x_2_target = -30;
						dt_draw_y_2_target = 0;
					}
				break;
			}
		}
	}
}

function move(_x_dir,_y_dir)
{
	array_delete(my_tile.entitys,array_get_index(my_tile.entitys,id),1);
	my_tile = instance_nearest(x+(global.tile_width-1)*_x_dir,y+(global.tile_width-1)*_y_dir,obj_tile);
	set_position();
	array_push(my_tile.entitys,id);
	gravity_direction = point_direction(x,y,my_tile.x,my_tile.y);
	gravity = 5;
	direction = gravity_direction;
	speed = gravity;
}

function move_tile(tile)
{
	array_delete(my_tile.entitys,array_get_index(my_tile.entitys,id),1);
	my_tile = tile;
	set_position();
	array_push(my_tile.entitys,id);
	gravity_direction = point_direction(x,y,my_tile.x,my_tile.y);
	gravity = 5;
	direction = gravity_direction;
	speed = gravity;
}

dt_draw_x = 0;
dt_draw_y = 0;

dt_draw_x_2_target = 0;
dt_draw_y_2_target = 0;
dt_draw_x_2 = 0;
dt_draw_y_2 = 0;
dist = 0;