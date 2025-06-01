if (!O_Player.swing) {
	if (O_Player.vspeed < 2) {
		O_Player.vspeed += 0.1;
	}

	var colBot = collision_line(O_Player.x - 6, O_Player.y + 17, O_Player.x + 6, O_Player.y + 17, O_Collider, true, false);
	var colTop = collision_line(O_Player.x - 6, O_Player.y - 17, O_Player.x + 6, O_Player.y - 17, O_Collider, true, false);
	var colRight;
	var colLeft;
	if (O_PlayerAnimationManager.slide || O_PlayerAnimationManager.roll) {
		colRight = collision_line(O_Player.x + 13, O_Player.y + 2, O_Player.x + 13, O_Player.y + 8, O_Collider, true, false);
		colLeft = collision_line(O_Player.x - 13, O_Player.y + 2, O_Player.x - 13, O_Player.y + 8, O_Collider, true, false);
	}
	else {
		colRight = collision_line(O_Player.x + 13, O_Player.y - 6, O_Player.x + 13, O_Player.y + 6, O_Collider, true, false);
		colLeft = collision_line(O_Player.x - 13, O_Player.y - 6, O_Player.x - 13, O_Player.y + 6, O_Collider, true, false);
	}
	
	var colRightDoor = collision_line(O_Player.x + 13, O_Player.y - 6, O_Player.x + 13, O_Player.y + 6, O_Door, true, false);
	var colLeftDoor = collision_line(O_Player.x - 13, O_Player.y - 6, O_Player.x - 13, O_Player.y + 6, O_Door, true, false);

	if (colBot > 0 && O_Player.vspeed > 0) {
		O_Player.vspeed = 0;
	}
	if (colTop > 0 && O_Player.vspeed < 0) {
		O_Player.vspeed = 0;
	}
	if ((colRight > 0 || colRightDoor > 0) && O_Player.hspeed > 0) {
		O_Player.hspeed = 0;
		if (O_Player.vspeed < 0) {
			O_Player.vspeed = 0;
		}
	}
	if ((colLeft > 0 || colLeftDoor > 0) && O_Player.hspeed < 0) {
		O_Player.hspeed = 0;
		if (O_Player.vspeed < 0) {
			O_Player.vspeed = 0;
		}
	}
}