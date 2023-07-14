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