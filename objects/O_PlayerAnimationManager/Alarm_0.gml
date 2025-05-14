if (wallClimb) {
	O_Player.y -= 11;
	if (goRight) {
		O_Player.x += 10;
	}
	else {
		O_Player.x -= 10;
	}
}

if (death) {
	//Checkpoint
	//DeadScreen
}

slide = false;
roll = false;
death = false;
wallClimb = false;
wallJump = false;

alarm_set(1, 30);