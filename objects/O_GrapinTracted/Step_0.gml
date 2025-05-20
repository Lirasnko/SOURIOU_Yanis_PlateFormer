var colPlayer = collision_circle(x, y, playerDist * 32 + 16, O_Player, true, false);
var colCollider = collision_line(x, y, O_Player.x, O_Player.y, O_Collider, true, false);
var colBot = collision_line(O_Player.x - 6, O_Player.y + 17, O_Player.x + 6, O_Player.y + 17, O_Collider, true, false);
var colRight = collision_line(O_Player.x + 13, O_Player.y - 6, O_Player.x + 13, O_Player.y + 6, O_Collider, true, false);
var colLeft = collision_line(O_Player.x - 13, O_Player.y - 6, O_Player.x - 13, O_Player.y + 6, O_Collider, true, false);


var spacePress = keyboard_check_pressed(vk_space);

if (colPlayer > 0 && !(colCollider > 0) && !(colRight > 0) && !(colLeft > 0)) {
	sprite_index = S_GrapinTracted_True;
	if (!(colBot > 0) && spacePress && rope == noone && O_GrapinManager.grapinCharge > 0) {
		O_GrapinManager.grapinCharge--;
		rope = instance_create_layer(x, y, "Props", O_LaserRope_Tracted);
	}
}
else {
	sprite_index = S_GrapinTracted_False;
}