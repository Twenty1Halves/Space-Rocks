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
}
if (keyboard_check(ord("S"))) {
	 motion_add(image_angle, -0.05);
}

//screen wrap
move_wrap(true, true, sprite_width/2);

if (keyboard_check_pressed(vk_space)) {
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.direction = image_angle;
}