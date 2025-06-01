var colPlayer = collision_circle(x, y, 6, O_Player, true, false);

if (colPlayer > 0) {
	if (!O_PlayerAnimationManager.laserDeath) {
		with(O_PlayerAnimationManager) {
			alarm_set(0, 30);
		}
		O_PlayerAnimationManager.laserDeath = true;
	}
}

image_angle += angle;