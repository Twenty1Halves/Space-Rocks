/// @description shooting
// You can write your code in this editor
angle = irandom(359);

repeat(4){
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_red);
	bullet.direction = angle;
	bullet.image_angle = angle;
	angle += 90;
}