function SC_GoGame() {
	global.lastRoom = room;
	if (global.start) {
		global.start = false;
		room_goto(R_Start);
	}
	else {
		if (room != R_Pause && room != R_Parameter) {
			global.spawn = true;
		}
		room_goto(R_Game);
	}
}