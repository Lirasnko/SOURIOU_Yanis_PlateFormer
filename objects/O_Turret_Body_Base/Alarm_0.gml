if (image_angle == 0) {
	head = instance_create_layer(x, y - 16, "TrapFront", O_Turret_Head);
	head.image_angle = image_angle;
	head.image_xscale = image_xscale;
	head.body = id;
}
if (image_angle == 90) {
	head = instance_create_layer(x - 16, y, "TrapFront", O_Turret_Head);
	head.image_angle = image_angle;
	head.image_xscale = image_xscale;
	head.body = id;
}
if (image_angle == 180) {
	head = instance_create_layer(x, y + 16, "TrapFront", O_Turret_Head);
	head.image_angle = image_angle;
	head.image_xscale = image_xscale;
	head.body = id;
}
if (image_angle == 270) {
	head = instance_create_layer(x + 16, y, "TrapFront", O_Turret_Head);
	head.image_angle = image_angle;
	head.image_xscale = image_xscale;
	head.body = id;
}

array_push(global.turrets, id);