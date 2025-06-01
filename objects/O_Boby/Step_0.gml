event_inherited();

var colPlayerLeft = collision_line(x - 20, y - 48, x - 20, y + 48, O_Player, true, false);
if (colPlayerLeft > 0 && O_Player.hspeed > hspeed) {
	O_Player.hspeed = hspeed;
}

var colPlayerRight = collision_line(x + 20, y - 48, x + 20, y + 48, O_Player, true, false);
if (colPlayerRight > 0 && O_Player.hspeed < hspeed) {
	O_Player.hspeed = hspeed;
}

var colPlayer = collision_circle(x, y, 6 * 32, O_Player, true, false);
if (colPlayer > 0) {
	var sound = random(1);
	if (sound < 0.01 && !audio_is_playing(SO_Boby)) {
		audio_play_sound(SO_Boby, 1, false);
	}
}