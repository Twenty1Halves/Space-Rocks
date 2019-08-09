/// @description reset shields
// You can write your code in this editor

//become vulnerable for 3 seconds
switch(sprite_index) {
	case spr_enemy:
		sprite_index = spr_enemy_vuln;
		break;
	case spr_enemy2:
		sprite_index = spr_enemy2_vuln;
		break;
	case spr_enemy3:
		sprite_index = spr_enemy3_vuln;
		break;
	case spr_enemy4:
		sprite_index = spr_enemy4_vuln;
		break;
	case spr_enemy5:
		sprite_index = spr_enemy5_vuln;
		break;
}

alarm[0] = 3*room_speed;