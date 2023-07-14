/// @description Insert description here
// You can write your code in this editor

event_inherited();

///이동
var _x_dir = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var _y_dir = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

if(_x_dir != 0 or _y_dir != 0){
	move(_x_dir,_y_dir);
	particle(1,c_white,random_range(9,9),point_direction(0,0,-_x_dir,-_y_dir));
}


///공격

if(keyboard_check_pressed(ord("A"))){attack_input_time = 20;}

if(attack_input_time >= 0)
{
	attack_input_time = 0;
	attack();
}

///공격판정
if(attacking == 1)
{
	if(image_index >= attack_frame and image_index <= attack_frame_end)
	{
		hit_enemy();
	}
}

attack_input_time--;


attack_delay_alarm--;


///귀환
if (return_now_cooldown > 0) { return_now_cooldown -= 1; }
if(keyboard_check_pressed(ord("S"))){
	if (return_now_cooldown == 0)
	{
		var target_tile = global.relic_tile;
		return_now_cooldown = return_cooldown;
		move_tile(target_tile);
		gravity = 20;
		speed = 20;
		
		var _dir = point_direction(x,y,target_tile.x,target_tile.y);
		with(obj_tile)
		{
			if (median(target_tile.x,x,other.x) == x)
			and (median(target_tile.y,y,other.y) == y) {
				particle(1,c_white,random_range(9,9),_dir);
			}
		}
	}
}