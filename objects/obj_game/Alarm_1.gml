/// @description ship respawn
if (global.upgrade = -1) {
	global.upgrade = 1;
	var newship = instance_create_layer(room_width/2,room_height/2,"Instances",obj_ship);
	newship.sprite_index = spr_ship2;
}