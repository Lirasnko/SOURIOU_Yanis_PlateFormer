function SC_RotateRoom_Left(grid){
	var nGrid = [];
	for (var i = 0; i < array_length(grid[0]); i++) {
		var list = [];
		for (var j = 0; j < array_length(grid); j++) {
			if (grid[j][array_length(grid[0]) - 1 - i] > 1) {
				if (grid[j][array_length(grid[0]) - 1 - i] < 6) {
					if (grid[j][array_length(grid[0]) - 1 - i] == 5) {
						array_push(list, 2);
					}
					else {
						array_push(list, grid[j][array_length(grid[0]) - 1 - i] + 1);
					}
				}
				else {
					if (grid[j][array_length(grid[0]) - 1 - i] == 9) {
						array_push(list, 6);
					}
					else {
						array_push(list, grid[j][array_length(grid[0]) - 1 - i] + 1);
					}
				}
			}
			else {
				array_push(list, grid[j][array_length(grid[0]) - 1 - i]);
			}
		}
		array_push(nGrid, list);
	}
	return(nGrid);
}