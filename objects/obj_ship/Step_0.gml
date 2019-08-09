/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("A"))) {
	image_angle += 5;
}
if (keyboard_check(ord("D"))) {
	image_angle -= 5;
}
if (keyboard_check(ord("W"))) {
	 motion_add(image_angle, 0.05);
	 if (global.upgrade == 3) {
		motion_add(image_angle, 0.1);
	}
}
if (keyboard_check(ord("S"))) {
	 motion_add(image_angle, -0.05);
	 if (global.upgrade == 3) {
		motion_add(image_angle, -0.1);
	}
}

//screen wrap
move_wrap(true, true, sprite_width/2);

if (keyboard_check_pressed(vk_space)) {
	if (global.upgrade == 2) {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet2);
		bullet.direction = image_angle;
		bullet.image_angle = image_angle;
	} else {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		bullet.direction = image_angle;
	}
}