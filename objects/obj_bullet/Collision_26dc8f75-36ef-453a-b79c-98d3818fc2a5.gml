/// @description Insert description here
// You can write your code in this editor

instance_destroy();
score += 100;

with(other) {
	if (sprite_index == spr_enemy 
	|| sprite_index == spr_enemy2
	|| sprite_index == spr_enemy3
	|| sprite_index == spr_enemy4
	|| sprite_index == spr_enemy5 ) {
		//invulnerable
		repeat(10){
			var newDebris = instance_create_layer(x,y,"Instances",obj_debris);
			newDebris.sprite_index = spr_debris2;
		}
		exit;
	}
	
	//boss is vulnerable past this point
	global.boss_hp--;
	instance_destroy();
	if (sprite_index == spr_enemy_vuln) {
			var new_enemy = instance_create_layer(x,y,"Instances",obj_enemy);
			new_enemy.sprite_index = spr_enemy2;
	}
	else if (sprite_index == spr_enemy2_vuln) {
			var new_enemy = instance_create_layer(x,y,"Instances",obj_enemy);
			new_enemy.sprite_index = spr_enemy3;
	}
	else if (sprite_index == spr_enemy3_vuln) {
			var new_enemy = instance_create_layer(x,y,"Instances",obj_enemy);
			new_enemy.sprite_index = spr_enemy4;
	}
	else if (sprite_index == spr_enemy4_vuln) {
			var new_enemy = instance_create_layer(x,y,"Instances",obj_enemy);
			new_enemy.sprite_index = spr_enemy5;
	}
	else if (sprite_index == spr_enemy5_vuln) {
		repeat(60){
			instance_create_layer(x,y,"Instances",obj_debris_red);
		}
	}
	
	repeat(20){
		instance_create_layer(x,y,"Instances",obj_debris_red);
	}
}

with(obj_game) {
	if (global.boss_hp <= 0) {
		alarm[2] = 2*room_speed;
	}
}