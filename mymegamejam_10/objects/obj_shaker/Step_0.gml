/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


array_foreach(shakes,function(element,index) {
	var target = element.target;
	var value = element.value;
	
	if instance_exists(target) {
		with(target) {
			dt_draw_x = lengthdir_x(value,irandom(359));
			dt_draw_y = lengthdir_y(value,irandom(359));
		}
	}
	
	shakes[index].value = value - 1;
	
	if (shakes[index].value <= 0) {
		array_delete(shakes,index,1);
	}
});

if (shake_display_value > 0)
{
	cam = view_camera[0];
	var view_x = camera_get_view_x(cam);
	var view_y = camera_get_view_y(cam);
	var dt_view_x = lengthdir_x(shake_display_value,irandom(359));
	var dt_view_y = lengthdir_y(shake_display_value,irandom(359));
	camera_set_view_pos(cam,view_x+dt_view_x,view_y+dt_view_y);
	
	shake_display_value -= 1;
}