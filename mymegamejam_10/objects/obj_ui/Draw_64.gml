/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//draw_pie(room_width/2,room_height/2,60,144,c_red,50,1);
draw_info(1900,80,string(obj_player.atk)+" AD",c_white,fa_right);
draw_info(20,80,"HP "+string(obj_relic.hp),c_white,fa_left);
draw_pie(1860,1020,obj_player.return_now_cooldown,obj_player.return_cooldown,c_white,48,0.5);
draw_pie(60,1020,obj_player.attack_delay_alarm,obj_player.attack_delay,c_white,48,0.5);