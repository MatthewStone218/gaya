/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


shakes = [
	{
		target: noone,
		value: 0,
	}
];

function shake(target,value) {
	array_push(shakes,{target : target, value : value });
}

shake_display_value = 0;

function shake_display(value) {
	shake_display_value = value;
}