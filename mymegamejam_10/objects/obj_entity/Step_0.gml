/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (speed > 0)
{
	//image_xscale *= 0.8;
	//image_yscale *= 0.8;
	if (point_distance(x,y,my_tile.x,my_tile.y) < dist/2)
	{
		gravity = -5;
	}
}
if (point_distance(x,y,my_tile.x,my_tile.y) <= speed)
{
	speed = 0;
	gravity = 0;
	x = my_tile.x;
	y = my_tile.y;
	image_xscale = sign(image_xscale)*1;
	image_yscale = 1;
}

dt_draw_x_2 += (dt_draw_x_2_target-dt_draw_x_2)/3;
dt_draw_y_2 += (dt_draw_y_2_target-dt_draw_y_2)/3;

depth = -(y+dt_draw_y+dt_draw_y_2);