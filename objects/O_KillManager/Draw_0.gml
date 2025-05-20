if (time > timeMax * 20) {
	var scale = (timeMax * 60 - time) / 10 > 2 ? (timeMax * 60 - time) / 10 : 2;
	if (O_PlayerAnimationManager.goRight) {
		draw_sprite_ext(S_KillScope, 0, O_Player.x, O_Player.y - 10, scale, scale, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(S_KillScope, 0, O_Player.x - 2, O_Player.y - 10, scale, scale, 0, c_white, 1);
	}
}