var colPlayer = collision_rectangle(x + 2, y + 2, x + 30, y + 62, O_Player, true, false);

if (colPlayer > 0 && (global.checkPointX != chptX || global.checkPointY != chptY)) {
	global.checkPointX = chptX;
	global.checkPointY = chptY;
}