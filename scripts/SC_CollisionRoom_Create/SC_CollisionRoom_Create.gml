function SC_CollisionRoom_Create(roomID, grid) {
	var xStart;
	var yStart;
	for (var i = 0; i < array_length(global.rooms); i++) {
		if (global.rooms[i].roomID = roomID) {
			xStart = global.rooms[i].x - 16 * sprite_get_width(global.rooms[i].sprite_index);
			yStart = global.rooms[i].y - 16 * sprite_get_height(global.rooms[i].sprite_index);
		}
	}
	for (var i = 0; i < array_length(grid); i++) {
		for (var j = 0; j < array_length(grid[i]); j++) {
			switch (grid[i][j]) {
				case 1 :
					instance_create_layer(xStart + 32 * j, yStart + 32 * i, "Collider", O_Collider_Box);
			}
		}
	}
}