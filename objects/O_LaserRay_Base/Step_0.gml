if (construct && activate && laser == noone) {
	if (image_angle == 0) {
		laser = [];
		array_push(laser, instance_create_layer(x + 5, y, "Trap", laserStart));
		var baseEnd = instance_create_layer(endBaseCo[0] - 5, endBaseCo[1], "Trap", laserStart);
		baseEnd.image_angle = 180;
		array_push(laser, baseEnd);
		var baseMiddle = instance_create_layer(endBaseCo[0] - 6, endBaseCo[1] + 16, "Trap", laserMiddle);
		baseMiddle.image_yscale = (y - endBaseCo[1] - 32) / 16;
		baseMiddle.image_angle = 180;
		array_push(laser, baseMiddle);
	}
	if (image_angle == 90) {
		laser = [];
		var baseStart = instance_create_layer(x, y - 5, "Trap", laserStart);
		baseStart.image_angle = 90;
		array_push(laser, baseStart);
		var baseEnd = instance_create_layer(endBaseCo[0], endBaseCo[1] + 5, "Trap", laserStart);
		baseEnd.image_angle = 270;
		array_push(laser, baseEnd);
		var baseMiddle = instance_create_layer(endBaseCo[0] + 16, endBaseCo[1] + 6, "Trap", laserMiddle);
		baseMiddle.image_yscale = (x - endBaseCo[0] - 32) / 16;
		baseMiddle.image_angle = 270;
		array_push(laser, baseMiddle);
	}
	if (image_angle == 180) {
		laser = [];
		var baseStart = instance_create_layer(x - 5, y, "Trap", laserStart);
		baseStart.image_angle = 180;
		array_push(laser, baseStart);
		var baseEnd = instance_create_layer(endBaseCo[0] + 5, endBaseCo[1], "Trap", laserStart);
		array_push(laser, baseEnd);
		var baseMiddle = instance_create_layer(endBaseCo[0] + 6, endBaseCo[1] - 16, "Trap", laserMiddle);
		baseMiddle.image_yscale = (endBaseCo[1] - y - 32) / 16;
		array_push(laser, baseMiddle);
	}
	if (image_angle == 270) {
		laser = [];
		var baseStart = instance_create_layer(x, y + 5, "Trap", laserStart);
		baseStart.image_angle = 270;
		array_push(laser, baseStart);
		var baseEnd = instance_create_layer(endBaseCo[0], endBaseCo[1] - 5, "Trap", laserStart);
		baseEnd.image_angle = 90;
		array_push(laser, baseEnd);
		var baseMiddle = instance_create_layer(endBaseCo[0] - 16, endBaseCo[1] - 6, "Trap", laserMiddle);
		baseMiddle.image_yscale = (endBaseCo[0] - x - 32) / 16;
		baseMiddle.image_angle = 90;
		array_push(laser, baseMiddle);
	}
}