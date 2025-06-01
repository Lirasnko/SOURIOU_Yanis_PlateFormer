if (body.activate) {
	var vision = collision_circle(x, y, body.radius * 32, O_Player, true, false);
	var collider = collision_line(x, y, O_Player.x, O_Player.y, O_Collider, true, false);
	var door = collision_line(x, y, O_Player.x, O_Player.y, O_Door, true, false);
	
	if (vision > 0 && !(collider > 0) && !(door > 0)) {
		var angle = point_direction(x, y, O_Player.x, O_Player.y);
		if (image_xscale = 1) {
			if (body.image_angle == 0) {
				if (angle > 300 || angle < 60) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
			if (body.image_angle == 90) {
				if (angle > 30 && angle < 150) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
			if (body.image_angle == 180) {
				if (angle > 120 && angle < 240) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
			if (body.image_angle == 270) {
				if (angle > 210 && angle < 330) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
		}
		else {
			if (body.image_angle == 0) {
				if (angle > 120 && angle < 240) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle + 180;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
			if (body.image_angle == 90) {
				if (angle > 210 && angle < 330) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle + 180;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
			if (body.image_angle == 180) {
				if (angle > 300 || angle < 60) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle + 180;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
			if (body.image_angle == 270) {
				if (angle > 30 && angle < 150) {
					if (sprite_index != S_Turret_HeadCharge) {
						sprite_index = S_Turret_HeadCharge;
					}
					image_angle = angle + 180;
					if (fire) {
						var bullet = instance_create_layer(x, y, "Trap", O_Turret_Bullet);
						bullet.image_angle = angle;
						bullet.direction = angle;
						bullet.speed = 3;
						fire = false;
						audio_play_sound(SO_LaserBullet, 1, false);
						alarm_set(0, 60);
					}
				}
				else {
					if (sprite_index != S_Turret_Head) {
						sprite_index = S_Turret_Head;
					}
				}
			}
		}
	}
	else {
		if (sprite_index != S_Turret_Head) {
			sprite_index = S_Turret_Head;
		}
	}
}
else if (image_angle != body.image_angle-90) {
	if (sprite_index != S_Turret_HeadOff) {
		sprite_index = S_Turret_HeadOff;
	}
	image_angle -= 2;
	if (image_angle < body.image_angle-90) {
		image_angle = body.image_angle-90;
	}
}