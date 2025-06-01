if (activate) {
	if (!(O_Player.hspeed > 1.8 || O_Player.hspeed < -1.8 || O_Player.vspeed > 1.8 || O_Player.swing || O_PlayerAnimationManager.wallClimb || O_Player.vspeed < -4)) {
		time++;
		if (time >= timeMax * 60) {
			O_PlayerAnimationManager.death = true;
			O_PlayerAnimationManager.stab = 0;
			with(O_PlayerAnimationManager) {
				alarm_set(0, 20);
			}
		}
		if (O_PlayerAnimationManager.death) {
			time = 0;
		}
	}
	else {
		time = 0;
	}
}

if (global.spawn) {
	global.spawn = false;
	alarm_set(0, 3);
}