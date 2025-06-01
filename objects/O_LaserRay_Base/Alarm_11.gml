if (construct) {
	var search = true;
	var i = 0;
	if (image_angle == 0) {
		while(search) {
			var colTop = collision_line(x, y - 18 - i * 16, x + 16, y - 18 - i * 16, O_Collider, true, false);
			if (colTop > 0) {
				var endBase = instance_create_layer(x + 16, y - i * 16 - 16, "Trap", O_LaserRay_Base);
				endBaseCo = [x + 16, y - i * 16 - 16];
				endBase.image_angle = 180;
				endBase.roomID = roomID;
				search = false;
			}
			else {
				i++;
			}
		}
	}
	if (image_angle == 90) {
		while(search) {
			var colLeft = collision_line(x - 18 - i * 16, y - 16, x - 18 - i * 16, y, O_Collider, true, false);
			if (colLeft > 0) {
				var endBase = instance_create_layer(x - i * 16, y - 16, "Trap", O_LaserRay_Base);
				endBaseCo = [x - i * 16, y - 16];
				endBase.image_angle = 270;
				endBase.roomID = roomID;
				search = false;
			}
			else {
				i++;
			}
		}
	}
	if (image_angle == 180) {
		while(search) {
			var colBot = collision_line(x, y + 18 + i * 16, x + 16, y + 18 + i * 16, O_Collider, true, false);
			if (colBot > 0) {
				var endBase = instance_create_layer(x - 16, y + i * 16 + 16, "Trap", O_LaserRay_Base);
				endBaseCo = [x - 16, y + i * 16 + 16];
				endBase.roomID = roomID;
				search = false;
			}
			else {
				i++;
			}
		}
	}
	if (image_angle == 270) {
		while(search) {
			var colRight = collision_line(x + 18 + i * 16, y - 16, x + 18 + i * 16, y, O_Collider, true, false);
			if (colRight > 0) {
				var endBase = instance_create_layer(x + i * 16 + 16, y + 16, "Trap", O_LaserRay_Base);
				endBaseCo = [x + i * 16 + 16, y + 16];
				endBase.image_angle = 90;
				endBase.roomID = roomID;
				search = false;
			}
			else {
				i++;
			}
		}
	}
}

array_push(global.lasers, id);