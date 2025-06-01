var colLeft = collision_circle(x - 75, y, 32 * 4, O_Player, true, false);
var colRight = collision_circle(x + 75, y, 32 * 4, O_Player, true, false);

var colPlayerBot = collision_line(O_Player.x - 6, O_Player.y + 17, O_Player.x + 6, O_Player.y + 17, O_Collider, true, false);

var spacePress = keyboard_check_pressed(vk_space);

if (colLeft > 0 && point_distance(x - 75, y, O_Player.x, O_Player.y) < point_distance(x + 75, y, O_Player.x, O_Player.y)) {
	if (activate1 == noone) {
		activate1 = instance_create_layer(x - 75, y, "Effects", O_Gyroscope_Activate);
	}
	
	if (!(colPlayerBot > 0) && !O_Player.swing && spacePress && O_GrapinManager.grapinCharge > 0 && (O_PlayerAnimationManager.jump || O_PlayerAnimationManager.fall || O_PlayerAnimationManager.wallJump)) {
		O_GrapinManager.grapinCharge--;
		rope = instance_create_layer(x - 75, y, "Props", O_LaserRope_Swing);
		left = false;
		for (var i = 0; i < array_length(global.rooms); i++) {
			if (global.rooms[i].roomID == roomID) {
				newAngle = global.rooms[i].image_angle - 90;
			}
		}
		alarm_set(0, 30);
	}
}
else if (activate1 != noone) {
	instance_destroy(activate1);
	activate1 = noone;
}
if (colRight > 0 && point_distance(x - 75, y, O_Player.x, O_Player.y) > point_distance(x + 75, y, O_Player.x, O_Player.y)) {
	if (activate2 == noone) {
		activate2 = instance_create_layer(x + 75, y, "Effects", O_Gyroscope_Activate);
	}
	
	if (!(colPlayerBot > 0) && !O_Player.swing && spacePress && O_GrapinManager.grapinCharge > 0 && (O_PlayerAnimationManager.jump || O_PlayerAnimationManager.fall || O_PlayerAnimationManager.wallJump)) {
		O_GrapinManager.grapinCharge--;
		rope = instance_create_layer(x + 75, y, "Props", O_LaserRope_Swing);
		left = true;
		for (var i = 0; i < array_length(global.rooms); i++) {
			if (global.rooms[i].roomID == roomID) {
				newAngle = global.rooms[i].image_angle + 90;
			}
		}
		alarm_set(0, 30);
	}
}
else if (activate2 != noone) {
	instance_destroy(activate2);
	activate2 = noone;
}

for (var i = 0; i < array_length(global.rooms); i++) {
	if (global.rooms[i].roomID == roomID) {
		if (global.rooms[i].image_angle < newAngle) {
			global.rooms[i].image_angle += 3;
		}
		if (global.rooms[i].image_angle > newAngle) {
			global.rooms[i].image_angle -= 3;
		}
	}
}