/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


array_foreach(shakes,function(element,index) 
	
	var target = element.target;{
		if !instance_exists(target) exit;
	var value = element.value;
	
	if instance_exists(target) {
		with(target) {
			dt_draw_x = lengthdir_x(value,irandom(359));
			dt_draw_y = lengthdir_y(value,irandom(359));
		}
	} else { return; }
	
	shakes[index].value = value - 1;
	
	if (shakes[index].value <= 0) {
		with(target) { dt_draw_x = 0; dt_draw_y = 0; }
		array_delete(shakes,index,1);
	}
	index -= 1;
});

if (shake_display_value > 0)
{
	cam = view_camera[0];
	var view_x = camera_get_view_x(cam);
	var view_y = camera_get_view_y(cam);
	var dt_view_x = lengthdir_x(shake_display_value,irandom(359));
	var dt_view_y = lengthdir_y(shake_display_value,irandom(359));
	camera_set_view_pos(cam,dt_view_x,dt_view_y);
	
	shake_display_value -= 1;
	if (shake_display_value <= 0) {
		camera_set_view_pos(cam,0,0);
	}
}