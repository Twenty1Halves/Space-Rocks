/// @description Insert description here
// You can write your code in this editor

score += 10;

with(other) {
	instance_destroy();
	if (sprite_index == spr_large) {
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_ast);
			new_asteroid.sprite_index = spr_med;
		}
	}
	else if (sprite_index == spr_med) {
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_ast);
			new_asteroid.sprite_index = spr_small;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
}