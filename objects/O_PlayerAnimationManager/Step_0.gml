var colBot = collision_line(O_Player.x - 6, O_Player.y + 17, O_Player.x + 6, O_Player.y + 17, O_Collider, true, false);
var colRight = collision_line(O_Player.x + 13, O_Player.y - 6, O_Player.x + 13, O_Player.y + 6, O_Collider, true, false);
var colLeft = collision_line(O_Player.x - 13, O_Player.y - 6, O_Player.x - 13, O_Player.y + 6, O_Collider, true, false);

var colTopGrabRight = collision_line(O_Player.x + 13, O_Player.y - 5, O_Player.x + 13, O_Player.y, O_Collider, true, false);
var colBotGrabRight = collision_line(O_Player.x + 13, O_Player.y + 1, O_Player.x + 13, O_Player.y + 7, O_Collider, true, false);
var colTopGrabLeft = collision_line(O_Player.x - 13, O_Player.y - 5, O_Player.x - 13, O_Player.y, O_Collider, true, false);
var colBotGrabLeft = collision_line(O_Player.x - 13, O_Player.y + 1, O_Player.x - 13, O_Player.y + 7, O_Collider, true, false);

if (alarm020) {
	alarm_set(0, 20);
	alarm020 = false;
}
if (alarm040) {
	alarm_set(0, 40);
	alarm040 = false;
}

//Seter
if (O_Player.hspeed > 0) {
	goRight = true;
}
else if (O_Player.hspeed < 0) {
	goRight = false;
}
if (colBot > 0) {
	if (stab == 2) {
		roll = true;
		stab = 0;
		alarm_set(0, 30);
	}
	else if (stab == 3) {
		death = true;
		stab = 0;
		alarm_set(0, 20);
	}
	else {
		stab = 0;
	}
}
if (stab == 0) {
	fallStartY = O_Player.y;
	fallEndY = O_Player.y;
}
if (O_Player.hspeed != 0 && colBot > 0) {
	run = true;
}
else {
	run = false;
	if (O_Player.vspeed < 0) {
		jump = true;
	}
	else {
		jump = false;
		if (O_Player.vspeed >= 0 && !(colBot > 0) && !wallClimb) {
			fall = true;
			if (fallEndY < O_Player.y) {
				fallEndY = O_Player.y;
			}
			if (stab == 0) {
				stab = 1;
				fallStartY = O_Player.y;
			}
			if (colLeft > 0 || colRight > 0) {
				fall = false;
				wallSlide = true;
				if (colLeft > 0) {
					goRight = true;
					if (colBotGrabLeft > 0 && !(colTopGrabLeft > 0)) {
						goRight = false;
						wallSlide = false;
						wallClimb = true;
						O_Player.x -= 10;
						alarm_set(0, 30);
					}
				}
				else {
					goRight = false;
					if (colBotGrabRight > 0 && !(colTopGrabRight > 0)) {
						goRight = true;
						wallSlide = false;
						wallClimb = true;
						O_Player.x += 10;
						alarm_set(0, 30);
					}
				}
			}
			else {
				wallSlide = false;
			}
		}
		else {
			fall = false;
		}
		if (stab == 3 || (fallEndY - fallStartY) > 160) {
			stab = 3;
		}
		else if (stab == 2 || (fallEndY - fallStartY) > 80) {
			stab = 2;
		}
		else {
			stab = 1;
		}
	}
}

//Direction
if (goRight) {
	O_Player.image_xscale = 1;
}
else {
	O_Player.image_xscale = -1;
}

//Animation
if (O_Player.swing) {
	O_Player.sprite_index = S_Player_Swing_Body;
}
else if (roll) {
	O_Player.sprite_index = S_Player_Stab_Roll;
}
else if (death) {
	O_Player.sprite_index = S_Player_Stab_Death;
	if (O_Player.hspeed != 0) {
		if (goRight) {
			O_Player.hspeed -= 0.05;
			if (O_Player.hspeed < 0) {
				O_Player.hspeed = 0;
			}
		}
		else {
			O_Player.hspeed += 0.05;
			if (O_Player.hspeed > 0) {
				O_Player.hspeed = 0;
			}
		}
	}
}
else if (slide) {
	O_Player.sprite_index = S_Player_Slide;
}
else if (run) {
	O_Player.sprite_index = S_Player_Run;
}
else if (wallJump) {
	if (createDust) {
		var dust = instance_create_layer(O_Player.x, O_Player.y, "Effects", O_Dust_FX);
		if (goRight) {
			dust.image_xscale = O_Player.image_xscale;
			dust.image_angle = 270;
			dust.x += 4;
		}
		else {
			dust.image_xscale = O_Player.image_xscale;
			dust.image_angle = 90;
			dust.x -= 4;
		}
		createDust = false;
	}
	O_Player.sprite_index = S_Player_Wall_Jump;
}
else if (jump) {
	if (createDust) {
		var dust = instance_create_layer(O_Player.x, O_Player.y, "Effects", O_Dust_FX);
		if (goRight) {
			dust.image_xscale = O_Player.image_xscale;
			dust.y += 3;
		}
		else {
			dust.image_xscale = O_Player.image_xscale;
			dust.y += 3;
		}
		createDust = false;
	}
	O_Player.sprite_index = S_Player_Jump;
}
else if (fall) {
	O_Player.sprite_index = S_Player_Fall;
}
else if (wallSlide) {
	O_Player.sprite_index = S_Player_Wall_Slide;
}
else if (wallClimb) {
	O_Player.sprite_index = S_Player_Wall_Climb;
}
else if (grapinSwing) {
}
else if (grapinTracted) {
}
else {
	O_Player.sprite_index = S_Player_Idle;
}