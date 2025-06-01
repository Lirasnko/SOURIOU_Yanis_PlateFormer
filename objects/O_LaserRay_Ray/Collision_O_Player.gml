if (!O_PlayerAnimationManager.laserDeath) {
	with(O_PlayerAnimationManager) {
		alarm_set(0, 30);
	}
	O_PlayerAnimationManager.laserDeath = true;
	O_Player.swing = false;
	for (var i = 0; i < array_length(global.hookSwing); i++) {
		if (global.hookSwing[i].rope != noone) {
			instance_destroy(global.hookSwing[i].rope);
			instance_destroy(global.hookSwing[i].arm1);
			instance_destroy(global.hookSwing[i].arm2);
			global.hookSwing[i].rope = noone;
			global.hookSwing[i].arm1 = noone;
			global.hookSwing[i].arm2 = noone;
		}
	}
}