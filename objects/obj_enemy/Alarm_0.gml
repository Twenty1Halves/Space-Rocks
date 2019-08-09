//put up shields and shoot
switch(sprite_index) {
	case spr_enemy_vuln:
		sprite_index = spr_enemy;
		break;
	case spr_enemy2_vuln:
		sprite_index = spr_enemy2;
		break;
	case spr_enemy3_vuln:
		sprite_index = spr_enemy3;
		break;
	case spr_enemy4_vuln:
		sprite_index = spr_enemy4;
		break;
	case spr_enemy5_vuln:
		sprite_index = spr_enemy5;
		break;
}

alarm[1] = 1*room_speed;
alarm[2] = 1.5*room_speed;
alarm[3] = 2*room_speed;
alarm[4] = 2.5*room_speed;
alarm[5] = 3*room_speed;
alarm[11] = 3*room_speed;