var colPlayer = collision_rectangle(x, y, x + 32 * image_xscale, y + 32 * image_yscale, O_Player, true, false);

if (colPlayer > 0) {
	if (sound) {
		if (firstSound) {
			firstSound = false;
			fonction();
		}
	}
	else {
		if (fonction != noone) {
			fonction();
		}
		else if (fonctionArg != noone) {
			fonctionArg(arg);
		}
	}
}