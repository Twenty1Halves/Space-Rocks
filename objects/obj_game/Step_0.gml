/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_lose:
			game_restart();
			break;
		case rm_boss_intro:
			room_goto(rm_boss);
			break;
	}
}

if (room == rm_game) {
	if (score >= 1000) {
		room_goto(rm_boss_intro);
	}
	if (lives <= 0) {
		room_goto(rm_lose);
	}
}

if (room == rm_boss_intro) {
	if (keyboard_check_pressed(ord("1"))){
		global.upgrade = 1;		
	} else if (keyboard_check_pressed(ord("2"))){
		global.upgrade = 2;
	} else if (keyboard_check_pressed(ord("3"))){
		global.upgrade = 3;
	}
}