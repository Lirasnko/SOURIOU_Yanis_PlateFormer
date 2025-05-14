var colBot = collision_line(x - 6, y + 17, x + 6, y + 17, O_Collider, true, false);
var colRight = collision_line(x + 13, y - 6, x + 13, y + 6, O_Collider, true, false);
var colLeft = collision_line(x - 13, y - 6, x - 13, y + 6, O_Collider, true, false);

if (colBot > 0) {
	if (hspeed > 0) {
		hspeed -= 0.1;
	}
	if (hspeed < 0) {
		hspeed += 0.1;
	}
	if (hspeed < 0.1 && hspeed > -0.1) {
		hspeed = 0;
	}
}

var dDown = false;
var qDown = false;
var spacePress = false;
var sDown = false;

if (!O_PlayerAnimationManager.wallClimb && !O_PlayerAnimationManager.roll && !O_PlayerAnimationManager.death) {
	dDown = keyboard_check(ord("D"));
	qDown = keyboard_check(ord("Q"));
	spacePress = keyboard_check_pressed(vk_space);
	sDown = keyboard_check(ord("S"));
}
if (spacePress && !swingFirst && swing) {
	swing = false;
	vspeed = -3;
	if (O_PlayerAnimationManager.goRight) {
		hspeed = 2.5;
	}
	else {
		hspeed = -2.5;
	}
	instance_destroy(O_Player_Arm1);
	O_GrapinSwing.arm1 = noone;
	instance_destroy(O_Player_Arm2);
	O_GrapinSwing.arm2 = noone;
	O_LaserRope.sprite_index = S_LaserRope_Supp;
	alarm_set(0, 15);
}
if (swing) {
	if (swingFirst) {
		hspeed = 0;
		vspeed = 0;
		speed = 2;
		swingFirst = false;
	}
	else {
		speed -= 0.01;
		if (speed < 1) {
			speed = 1;
		}
		angles[0] += 0.2;
		angles[1] -= 0.2;
		if (angles[0] > anglesMin[0]) {
			angles[0] = anglesMin[0];
		}
		if (angles[1] < anglesMin[1]) {
			angles[1] = anglesMin[1];
		}
	}
	if ((O_LaserRope.left && dDown) || (!O_LaserRope.left && qDown)) {
		speed += 0.5;
		if (speed > 3) {
			speed = 3;
		}
		angles[0] -= 2;
		angles[1] += 2;
		if (angles[0] < anglesMax[0]) {
			angles[0] = anglesMax[0];
		}
		if (angles[1] > anglesMax[1]) {
			angles[1] = anglesMax[1];
		}
	}
	if (O_LaserRope.left) {
		direction = O_LaserRope.image_angle + 90;
		if (O_LaserRope.image_angle > O_Player.angles[1]) {
			O_LaserRope.left = false;
		}
	}
	else {
		direction = O_LaserRope.image_angle - 90;
		if (O_LaserRope.image_angle < O_Player.angles[0]) {
			O_LaserRope.left = true;
		}
	}
	if (point_distance(x, y, O_LaserRope.x, O_LaserRope.y) > O_LaserRope.distance) {
		var dif = x - O_LaserRope.x;
		if (dif < 2 && dif > -2) {
			y -= 4;
		}
	}
	if (point_distance(x, y, O_LaserRope.x, O_LaserRope.y) < O_GrapinSwing.playerDist * 32 + 16 && sDown) {
		var dif = x - O_LaserRope.x;
		if (dif < 2 && dif > -2) {
			y += 10;
			O_LaserRope.distance = point_distance(O_LaserRope.x, O_LaserRope.y, x, y) - O_LaserRope.playerDistance;
		}
	}
}
else {
	if (colBot > 0) {
		if (dDown && hspeed < maxSpeed) {
			hspeed += 0.2;
			if (hspeed > maxSpeed) {
				hspeed = maxSpeed;
			}
		}
		if (qDown && hspeed > -maxSpeed) {
			hspeed -= 0.2;
			if (hspeed < -maxSpeed) {
				hspeed = -maxSpeed;
			}
		}
		if (sDown && (hspeed < -1 || hspeed > 1) && !O_PlayerAnimationManager.roll && !O_PlayerAnimationManager.death && O_PlayerAnimationManager.slideDo) {
			O_PlayerAnimationManager.slide = true;
			O_PlayerAnimationManager.slideDo = false;
			O_PlayerAnimationManager.alarm040 = true;
		}
	}
	if (spacePress && vspeed == 0 && !O_PlayerAnimationManager.roll && !O_PlayerAnimationManager.slide) {
		O_PlayerAnimationManager.createDust = true;
		vspeed = -3.7;
	}
	if (spacePress && vspeed > 0 && (colLeft > 0 || colRight > 0)) {
		O_PlayerAnimationManager.createDust = true;
		O_PlayerAnimationManager.wallJump = true;
		O_PlayerAnimationManager.alarm020 = true;
		O_PlayerAnimationManager.stab = 0;
		vspeed = -3;
		if (colLeft > 0) {
			hspeed = maxSpeed / 2;
		}
		else {
			hspeed = -maxSpeed / 2;
		}
	}
}