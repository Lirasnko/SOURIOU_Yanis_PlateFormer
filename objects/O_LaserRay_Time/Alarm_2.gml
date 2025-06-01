if (count == 3) {
	count = 0;
}
else {
	var colPlayer = collision_rectangle(O_Player.x - 7 * 32, O_Player.y - 4 * 32, O_Player.x + 7 * 32, O_Player.y + 4 * 32, id, true, false);
	if (colPlayer > 0) {
		audio_play_sound(SO_LaserTimer, 1, false);
	}
	count++;
	alarm_set(2, 20);
}