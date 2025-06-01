function SC_CollisionRoom_Create(roomID, grid) {
	var xStart;
	var yStart;
	for (var i = 0; i < array_length(global.rooms); i++) {
		if (global.rooms[i].roomID = roomID) {
			if (global.rooms[i].image_angle % 180 == 0) {
				xStart = global.rooms[i].x - sprite_get_width(global.rooms[i].sprite_index) / 2;
				yStart = global.rooms[i].y - sprite_get_height(global.rooms[i].sprite_index) / 2;
			}
			else {
				xStart = global.rooms[i].x - sprite_get_height(global.rooms[i].sprite_index) / 2;
				yStart = global.rooms[i].y - sprite_get_width(global.rooms[i].sprite_index) / 2;
			}
		}
	}
	for (var i = 0; i < array_length(grid); i++) {
		for (var j = 0; j < array_length(grid[i]); j++) {
			switch (grid[i][j]) {
				//box
				case 1 :
					var box = instance_create_layer(xStart + 32 * j, yStart + 32 * i, "Collider", O_Collider_Box);
					box.roomID = roomID;
					break;
				//bot slab
				case 2 :
					var botSlab = instance_create_layer(xStart + 32 * j, yStart + 32 * i + 16, "Collider", O_Collider_Box);
					botSlab.roomID = roomID;
					break;
				//right slab
				case 3 :
					var rightSlab = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i, "Collider", O_Collider_Box);
					rightSlab.roomID = roomID;
					break;
				//top slab
				case 4 :
					var topSlab = instance_create_layer(xStart + 32 * j, yStart + 32 * i - 16, "Collider", O_Collider_Box);
					topSlab.roomID = roomID;
					break;
				//left slab
				case 5 :
					var leftSlab = instance_create_layer(xStart + 32 * j - 16, yStart + 32 * i, "Collider", O_Collider_Box);
					leftSlab.roomID = roomID;
					break;
				//top hook tracted
				case 6 :
					var topHookTracted = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinTracted);
					topHookTracted.roomID = roomID;
					break;
				//left hook tracted
				case 7 :
					var leftHookTracted = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinTracted);
					leftHookTracted.roomID = roomID;
					leftHookTracted.image_angle = 90;
					break;
				//bot hook tracted
				case 8 :
					var botHookTracted = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinTracted);
					botHookTracted.roomID = roomID;
					botHookTracted.image_angle = 180;
					break;
				//right hook tracted
				case 9 :
					var rightHookTracted = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinTracted);
					rightHookTracted.roomID = roomID;
					rightHookTracted.image_angle = 270;
					break;
				//top hook swing
				case 10 :
					var topHookSwing = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinSwing);
					topHookSwing.roomID = roomID;
					break;
				//left hook swing
				case 11 :
					var leftHookSwing = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinSwing);
					leftHookSwing.roomID = roomID;
					leftHookSwing.image_angle = 90;
					break;
				//bot hook swing
				case 12 :
					var botHookSwing = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinSwing);
					botHookSwing.roomID = roomID;
					botHookSwing.image_angle = 180;
					break;
				//right hook swing
				case 13 :
					var rightHookSwing = instance_create_layer(xStart + 32 * j + 16, yStart + 32 * i + 16, "Props", O_GrapinSwing);
					rightHookSwing.roomID = roomID;
					rightHookSwing.image_angle = 270;
					break;
				//bot laser ball
				case 14 :
					var botLaserBall = instance_create_layer(xStart + 32 * j + 8, yStart + 32 * i + 32, "Trap", O_LaserBall_Base);
					botLaserBall.roomID = roomID;
					botLaserBall.construct = true;
					break;
				//right laser ball
				case 15 :
					var rightLaserBall = instance_create_layer(xStart + 32 * j + 32, yStart + 32 * i + 24, "Trap", O_LaserBall_Base);
					rightLaserBall.roomID = roomID;
					rightLaserBall.construct = true;
					rightLaserBall.image_angle = 90;
					break;
				//top laser ball
				case 16 :
					var topLaserBall = instance_create_layer(xStart + 32 * j + 24, yStart + 32 * i, "Trap", O_LaserBall_Base);
					topLaserBall.roomID = roomID;
					topLaserBall.construct = true;
					topLaserBall.image_angle = 180;
					break;
				//left laser ball
				case 17 :
					var leftLaserBall = instance_create_layer(xStart + 32 * j, yStart + 32 * i + 8, "Trap", O_LaserBall_Base);
					leftLaserBall.roomID = roomID;
					leftLaserBall.construct = true;
					leftLaserBall.image_angle = 270;
					break;
				//bot laser ray time
				case 18 :
					var botLaserRayTime = instance_create_layer(xStart + 32 * j + 8, yStart + 32 * i + 32, "Trap", O_LaserRay_Time);
					botLaserRayTime.roomID = roomID;
					botLaserRayTime.construct = true;
					break;
				//right laser ray time
				case 19 :
					var rightLaserRayTime = instance_create_layer(xStart + 32 * j + 32, yStart + 32 * i + 24, "Trap", O_LaserRay_Time);
					rightLaserRayTime.roomID = roomID;
					rightLaserRayTime.construct = true;
					rightLaserRayTime.image_angle = 90;
					break;
				//top laser ray time
				case 20 :
					var topLaserRayTime = instance_create_layer(xStart + 32 * j + 24, yStart + 32 * i, "Trap", O_LaserRay_Time);
					topLaserRayTime.roomID = roomID;
					topLaserRayTime.construct = true;
					topLaserRayTime.image_angle = 180;
					break;
				//left laser ray time
				case 21 :
					var leftLaserRayTime = instance_create_layer(xStart + 32 * j, yStart + 32 * i + 8, "Trap", O_LaserRay_Time);
					leftLaserRayTime.roomID = roomID;
					leftLaserRayTime.construct = true;
					leftLaserRayTime.image_angle = 270;
					break;
			}
		}
	}
}