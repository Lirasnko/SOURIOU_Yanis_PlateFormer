var colPlayer;
if (image_angle == 0) {
	colPlayer = collision_rectangle(x - 32, y, x + 48, y + 16 * image_yscale, O_Player, true, false);
}
else if (image_angle == 90) {
	colPlayer = collision_rectangle(x, y - 48, x + 16 * image_yscale, y + 32, O_Player, true, false);
}
else if (image_angle == 180) {
	colPlayer = collision_rectangle(x - 48, y - 16 * image_yscale, x + 32, y, O_Player, true, false);
}
else {
	colPlayer = collision_rectangle(x - 16 * image_yscale, y - 32, x, y + 48, O_Player, true, false);
}

if (colPlayer > 0) {
	if (!audio_is_playing(SO_Laser)) {
		audio_play_sound(SO_Laser, 1, true);
		sound = true;
	}
}
else {
	if (array_length(global.lasers) != 0) {
		var stop = true;
		for (var i = 0; i < array_length(global.lasers); i++) {
			for (var j = 0; j < array_length(global.lasers[i].laser); j++) {
				if (global.lasers[i].laser[j].sound && global.lasers[i].laser[j] != id) {
					stop = false;
				}
			}
		}
		if (stop) {
			audio_stop_sound(SO_Laser);
		}
	}
}