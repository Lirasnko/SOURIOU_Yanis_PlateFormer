function SC_GoPause() {
	global.lastRoom = room;
	room_goto(R_Pause);
}