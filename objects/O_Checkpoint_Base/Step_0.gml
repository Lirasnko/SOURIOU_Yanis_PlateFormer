var colPlayer = collision_rectangle(x + 2, y + 2, x + 30, y + 62, O_Player, true, false);

if (colPlayer > 0 && (global.checkPointX != chptX || global.checkPointY != chptY)) {
	global.checkPointX = chptX;
	global.checkPointY = chptY;
	O_GrapinManager.grapinCharge = O_GrapinManager.grapinChargeMax;
}

if (chptX == global.checkPointX && chptY == global.checkPointY) {
	if (sprite_index != S_Cuve_BaseOn) {
		sprite_index = S_Cuve_BaseOn;
	}
}
else {
	if (sprite_index != S_Cuve_BaseOff) {
		sprite_index = S_Cuve_BaseOff;
	}
}