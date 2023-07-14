/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



tuto_text = "";
tuto_text_alpha = 0;

sequence = [
	function() {
		tuto_text = "TEST1";
		tuto_text_alpha = 0;
	},
	function() {
		tuto_text = "TEST2";
		tuto_text_alpha = 0;
	},
];

tuto_index = 0;

function next() {
	sequence[tuto_index]();
	tuto_index += 1;
}

next();