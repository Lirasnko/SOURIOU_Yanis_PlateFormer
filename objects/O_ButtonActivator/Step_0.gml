var colPlayer = collision_rectangle(x - 6, y - 26, x + 6, y, O_Player, true, false);

if (colPlayer > 0) {
	if (sound) {
		audio_play_sound(SO_Button, 1, false);
		sound = false;
	}
	if (laser) {
		for (var i = 0; i < array_length(global.lasers); i++) {
			if (global.lasers[i].laserID == laserID) {
				global.lasers[i].activate = false;
				if (typeof(global.lasers[i].laser) == "array") {
					for (var j = 0; j < array_length(global.lasers[i].laser); j++) {
						instance_destroy(global.lasers[i].laser[j]);
					}
					global.lasers[i].laser = noone;
				}
			}
		}
	}
	if (turret) {
		for (var i = 0; i < array_length(global.turrets); i++) {
			if (global.turrets[i].turretID == turretID) {
				global.turrets[i].activate = false;
			}
		}
	}
}