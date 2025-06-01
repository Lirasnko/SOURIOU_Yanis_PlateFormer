if (!O_PlayerAnimationManager.laserDeath) {
	with(O_PlayerAnimationManager) {
		alarm_set(0, 30);
	}
	O_PlayerAnimationManager.laserDeath = true;
	instance_destroy();
}