instance_destroy();

with(obj_ship) {
	if (global.upgrade == 1) {
		global.upgrade = -1;
		obj_ship.sprite_index = spr_ship;
		repeat(30){
			var newDebris = instance_create_layer(x,y,"Instances",obj_debris);
			newDebris.sprite_index = spr_debris2;
		}
		alarm[0] = 10*room_speed;
		exit;
	}

	instance_destroy(obj_ship);
	repeat(30){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
}

lives -= 1;
with(obj_game){
	alarm[1] = room_speed; //respawn alarm
}