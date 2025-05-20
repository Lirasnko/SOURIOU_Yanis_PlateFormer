function SC_CollisionRoom_Delete(roomNum) {
	for (var i = 0; i < array_length(global.colliders); i++) {
		if (global.colliders[i].roomID == roomNum) {
			instance_destroy(global.colliders[i]);
		}
	}
}