var colPlayer = collision_rectangle(x + 10, y + 6, x + 22, y + 32, O_Player, true, false);

if (laser && colPlayer > 0) {
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