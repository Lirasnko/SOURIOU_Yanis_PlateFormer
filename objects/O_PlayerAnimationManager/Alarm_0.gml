if (wallClimb) {
	O_Player.y -= 11;
	if (goRight) {
		O_Player.x += 10;
	}
	else {
		O_Player.x -= 10;
	}
}

if (death || laserDeath) {
	for (var i = 0; i < array_length(global.checkpoints); i++) {
		if (global.checkpoints[i].chptX == global.checkPointX && global.checkpoints[i].chptY == global.checkPointY) {
			if (global.checkpoints[i].glass.sprite_index != S_Cuve_Glass_Move) {
				global.checkpoints[i].glass.sprite_index = S_Cuve_Glass_Move;
				with (global.checkpoints[i].glass) {
					alarm_set(0, 30);
				}
			}
		}
	}
	O_NumberManager.num4++;
	O_Player.x = global.checkPointX;
	O_Player.y = global.checkPointY;
	O_PlayerAnimationManager.stab = 0;
	O_Player.vspeed = 0;
	O_Player.hspeed = 0;
	instance_create_layer(O_Player.x, O_Player.y - 10, "Effects", O_SteamSpawn_FX);
	global.death = true;
	global.lastRoom = room;
	for (var i = 0; i < array_length(global.gyroscopes); i++) {
		if (global.gyroscopes[i].roomID == global.rooms[i].roomID) {
			if (global.rooms[i].image_angle == 90 || global.rooms[i].image_angle == -270) {
				global.gyroscopes[i].rope = 1;
				global.gyroscopes[i].left = false;
				global.gyroscopes[i].newAngle = 0;
				with (O_Gyroscope) {
					alarm_set(0, 30);
				}
			}
			if (global.rooms[i].image_angle == 270 || global.rooms[i].image_angle == -90) {
				global.gyroscopes[i].rope = 1;
				global.gyroscopes[i].left = true;
				global.gyroscopes[i].newAngle = 0;
				with (O_Gyroscope) {
					alarm_set(0, 30);
				}
			}
			if (global.rooms[i].image_angle == 180 || global.rooms[i].image_angle == -180) {
				global.gyroscopes[i].rope = 1;
				global.gyroscopes[i].left = true;
				global.gyroscopes[i].newAngle = 270;
				with (O_Gyroscope) {
					alarm_set(0, 30);
				}
				alarm_set(0, 30);
			}
		}
	}
	room_goto(R_Death);
}

slide = false;
roll = false;
death = false;
laserDeath = false;
wallClimb = false;
wallJump = false;

alarm_set(1, 30);