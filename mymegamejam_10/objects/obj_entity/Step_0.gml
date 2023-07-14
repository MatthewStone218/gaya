/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (speed > 0)
{
	if (point_distance(x,y,my_tile.x,my_tile.y) < speed)
	{
		speed = 0;
		x = my_tile.x;
		y = my_tile.y;
		image_xscale = o_xscale;
		image_yscale = o_yscale;
	}
}