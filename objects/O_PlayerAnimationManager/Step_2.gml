if (wallClimb) {
	if (O_Player.vspeed != 0) {
		O_Player.vspeed = 0;
	}
}
if (roll) {
	if (goRight) {
		O_Player.hspeed = 2;
	}
	else {
		O_Player.hspeed = -2;
	}
}
if (slide) {
	if (goRight) {
		O_Player.hspeed = O_Player.maxSpeed;
	}
	else {
		O_Player.hspeed = -O_Player.maxSpeed;
	}
}
if (wallSlide) {
	stab = 0;
}