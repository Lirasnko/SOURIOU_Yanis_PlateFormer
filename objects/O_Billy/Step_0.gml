event_inherited();

var colPlayerLeft = collision_line(x - 20, y - 16, x - 20, y + 16, O_Player, true, false);
if (colPlayerLeft > 0 && O_Player.hspeed > hspeed) {
	O_Player.hspeed = hspeed;
}

var colPlayerRight = collision_line(x + 20, y - 16, x + 20, y + 16, O_Player, true, false);
if (colPlayerRight > 0 && O_Player.hspeed < hspeed) {
	O_Player.hspeed = hspeed;
}