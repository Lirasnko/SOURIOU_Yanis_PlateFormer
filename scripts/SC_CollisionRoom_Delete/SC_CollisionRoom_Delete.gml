function SC_CollisionRoom_Delete(roomNum) {
	for (var i = 0; i < array_length(global.colliders); i++) {
		if (global.colliders[i].roomID == roomNum) {
			instance_destroy(global.colliders[i]);
			array_delete(global.colliders, i, 1);
			i--;
		}
	}
	for (var i = 0; i < array_length(global.lasers); i++) {
		if (global.lasers[i].roomID == roomNum) {
			if (typeof(global.lasers[i].laser) == "array") {
				for (var j = 0; j < array_length(global.lasers[i].laser); j++) {
					instance_destroy(global.lasers[i].laser[j]);
				}
			}
			instance_destroy(global.lasers[i]);
			array_delete(global.lasers, i, 1);
			i--;
		}
	}
	for (var i = 0; i < array_length(global.balls); i++) {
		if (global.balls[i].roomID == roomNum) {
			instance_destroy(global.balls[i].ball);
			instance_destroy(global.balls[i].line);
			instance_destroy(global.balls[i]);
			array_delete(global.balls, i, 1);
			i--;
		}
	}
	for (var i = 0; i < array_length(global.turrets); i++) {
		if (global.turrets[i].roomID == roomNum) {
			instance_destroy(global.turrets[i].head);
			instance_destroy(global.turrets[i]);
			array_delete(global.turrets, i, 1);
			i--;
		}
	}
	for (var i = 0; i < array_length(global.buttons); i++) {
		if (global.buttons[i].roomID == roomNum) {
			instance_destroy(global.buttons[i]);
			array_delete(global.buttons, i, 1);
			i--;
		}
	}
	for (var i = 0; i < array_length(global.hookSwing); i++) {
		if (global.hookSwing[i].roomID == roomNum) {
			instance_destroy(global.hookSwing[i]);
			array_delete(global.hookSwing, i, 1);
			i--;
		}
	}
	for (var i = 0; i < array_length(global.hookTracted); i++) {
		if (global.hookTracted[i].roomID == roomNum) {
			instance_destroy(global.hookTracted[i]);
			array_delete(global.hookTracted, i, 1);
			i--;
		}
	}
}