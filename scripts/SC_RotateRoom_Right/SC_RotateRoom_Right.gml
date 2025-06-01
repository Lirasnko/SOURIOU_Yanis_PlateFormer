function SC_RotateRoom_Right(grid) {
	var nGrid = [];
	for (var i = 0; i < array_length(grid[0]); i++) {
		var list = [];
		for (var j = 0; j < array_length(grid); j++) {
			if (grid[array_length(grid) - 1 - j][i] > 1 && grid[array_length(grid) - 1 - j][i] < 22) {
				if (grid[array_length(grid) - 1 - j][i] < 6) {
					if (grid[array_length(grid) - 1 - j][i] == 2) {
						array_push(list, 5);
					}
					else {
						array_push(list, grid[array_length(grid) - 1 - j][i] - 1);
					}
				}
				else if (grid[array_length(grid) - 1 - j][i] < 10) {
					if (grid[array_length(grid) - 1 - j][i] == 6) {
						array_push(list, 9);
					}
					else {
						array_push(list, grid[array_length(grid) - 1 - j][i] - 1);
					}
				}
				else if (grid[array_length(grid) - 1 - j][i] < 14) {
					if (grid[array_length(grid) - 1 - j][i] == 10) {
						array_push(list, 13);
					}
					else {
						array_push(list, grid[array_length(grid) - 1 - j][i] - 1);
					}
				}
				else if (grid[array_length(grid) - 1 - j][i] < 18) {
					if (grid[array_length(grid) - 1 - j][i] == 14) {
						array_push(list, 17);
					}
					else {
						array_push(list, grid[array_length(grid) - 1 - j][i] - 1);
					}
				}
				else {
					if (grid[array_length(grid) - 1 - j][i] == 18) {
						array_push(list, 21);
					}
					else {
						array_push(list, grid[array_length(grid) - 1 - j][i] - 1);
					}
				}
			}
			else {
				array_push(list, grid[array_length(grid) - 1 - j][i]);
			}
		}
		array_push(nGrid, list);
	}
	return(nGrid);
}