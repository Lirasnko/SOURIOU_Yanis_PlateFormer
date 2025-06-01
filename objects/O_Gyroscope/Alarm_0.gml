if (rope != noone) {
	for (var i = 0; i < array_length(global.rooms); i++) {
		if (global.rooms[i].roomID == roomID) {
			SC_CollisionRoom_Delete(roomID);
			var nGrid = [];
			if (!left) {
				nGrid = SC_RotateRoom_Right(global.rooms[i].grid);
			}
			else {
				nGrid = SC_RotateRoom_Left(global.rooms[i].grid);
			}
			global.rooms[i].grid = nGrid;
			SC_CollisionRoom_Create(roomID, nGrid);
		}
	}
	O_Player.swing = false;
	instance_destroy(rope);
	rope = noone;
}