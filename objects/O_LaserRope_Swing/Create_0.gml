distance = point_distance(x, y, O_Player.x, O_Player.y) - playerDistance;
image_xscale = distance / 12;
sprite_index = S_LaserRope_Swing_Create;
alarm_set(0, 15);

O_Player.swing = true;
O_Player.swingFirst = true;

if (left) {
	O_Player.angles = [point_direction(x, y, O_Player.x, O_Player.y), 270 + (270 - point_direction(x, y, O_Player.x, O_Player.y))];
}
else {
	O_Player.angles = [270 - (point_direction(x, y, O_Player.x, O_Player.y) - 270), point_direction(x, y, O_Player.x, O_Player.y)];
}