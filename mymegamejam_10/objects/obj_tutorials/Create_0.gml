/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



tuto_text = "";
tuto_text_now = "";
tuto_text_now_index = 0;
tuto_text_step = 3;
tuto_text_step_now = 0;
tuto_text_alpha = 0;

sequence = [
	function() {
		tuto_text = "TEST1TEST1TEST1TEST1TEST1TEST1TEST1TEST1TEST1TEST1";
		tuto_text_alpha = 0;
	},
	function() {
		tuto_text = "TEST2TEST2TEST2TEST2TEST2TEST2TEST2TEST2TEST2TEST2";
		tuto_text_alpha = 0;
	},
];

tuto_index = 0;

function next() {
	
	if (tuto_index >= array_length(sequence)) {
		final();
		return;
	}
	
	sequence[tuto_index]();
	tuto_index += 1;
	tuto_text_now = "";
	tuto_text_now_index = 0;
}

next();

function final() {
	room_goto(rm_game_1);
}