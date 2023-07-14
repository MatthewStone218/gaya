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
		tuto_text = "키보드 방향키를 눌러 캐릭터를 움직여 보세요.";
		tuto_text_alpha = 0;
	},
	function() {
		tuto_text = "적과 같은 칸에 있으면 ‘Z’를 눌러 적을 공격 할 수 있습니다.";
		tuto_text_alpha = 0;
		var tile = noone;
		with(obj_tile) {
			if (tile == noone || x < tile.x) tile = id;
		}
		instance_create_depth(tile.x,tile.y,obj_player.depth,obj_enemy_1);
	},
	function() {
		tuto_text = "‘X’키를 눌러 빠르게 귀환할 수 있습니다.";
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


//일회성 튜토리얼 변수
key_left = false;
key_right = false;