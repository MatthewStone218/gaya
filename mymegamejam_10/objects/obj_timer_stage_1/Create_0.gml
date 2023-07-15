/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

timer =
[
	function() {
		_alarm = 120;
	}
	,
	function() {
		_alarm = 180;
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 180;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 60;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 120;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 180;
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 120;
		spawn(obj_enemy_1,obj_spawn_point_1);
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 60;
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 30;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 60;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 120;
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 120;
		spawn(obj_enemy_2,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 60;
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 30;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 60;
		spawn(obj_enemy_1,obj_spawn_point_1);
	}
	,
	function() {
		_alarm = 120;
		spawn(obj_enemy_1,obj_spawn_point_2);
	}
	,
	function() {
		_alarm = 120;
		spawn(obj_enemy_2,obj_spawn_point_2);
	}
]