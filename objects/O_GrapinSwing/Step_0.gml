var colPlayer = collision_circle(x, y, playerDist * 32 + 16, O_Player, true, false);
var colCollider = collision_line(x, y, O_Player.x, O_Player.y, O_Collider, true, false);
var colBot = collision_line(O_Player.x - 6, O_Player.y + 17, O_Player.x + 6, O_Player.y + 17, O_Collider, true, false);

var spacePress = keyboard_check_pressed(vk_space);

if (colPlayer > 0 && !(colCollider > 0) && !(colBot > 0) && spacePress && rope == noone) {
	rope = instance_create_layer(x, y, "Props", O_LaserRope);
	arm1 = instance_create_layer(O_Player.x - 4, O_Player.y - 3, "Arm", O_Player_Arm1);
	arm2 = instance_create_layer(O_Player.x + 2, O_Player.y - 3, "Arm", O_Player_Arm2);
	if (x >= O_Player.x) {
		rope.left = true;
	}
	else {
		rope.left = false;
	}
}