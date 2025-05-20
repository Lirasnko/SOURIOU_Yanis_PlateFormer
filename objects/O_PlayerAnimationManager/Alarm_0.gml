if (wallClimb) {
	O_Player.y -= 11;
	if (goRight) {
		O_Player.x += 10;
	}
	else {
		O_Player.x -= 10;
	}
}

if (death || laserDeath) {
	O_Player.x = global.checkPointX;
	O_Player.y = global.checkPointY;
	instance_create_layer(O_Player.x, O_Player.y - 10, "Effects", O_SteamSpawn_FX);
	global.death = true;
	global.lastRoom = room;
	room_goto(R_Death);
}

slide = false;
roll = false;
death = false;
laserDeath = false;
wallClimb = false;
wallJump = false;

alarm_set(1, 30);