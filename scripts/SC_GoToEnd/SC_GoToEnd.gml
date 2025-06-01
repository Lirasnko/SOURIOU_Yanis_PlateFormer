function SC_GoToEnd() {
	O_Player.x = global.startX;
	O_Player.y = global.startY;
	global.start = true;
	for (var i = 0; i < array_length(global.doors); i++) {
		instance_destroy(global.doors[i]);
	}
	global.doors = [];
	for (var i = 0; i < array_length(global.soundZones); i++) {
		global.soundZones[i].firstSound = true;
	}
	room_goto(R_End);
}