var colText = collision_rectangle(x - 16, y - 16, x + 16, y + 16, O_TextZone, true, false);
var colWall = collision_rectangle(x - 16, y - 16, x + 16, y + 16, O_ButtonWall, true, false);

if (colText > 0) {
	count1++;
	if (sprite_index == S_Button_Animation_Run) {
		sprite_index = S_Button_Animation_SlideStart;
	}
	if (sprite_index == S_Button_Animation_SlideStart && count1 > 20) {
		sprite_index = S_Button_Animation_SlideMiddle;
	}
}
else {
	count2++;
	if (sprite_index == S_Button_Animation_SlideMiddle) {
	sprite_index = S_Button_Animation_SlideEnd;
	}
	if (sprite_index == S_Button_Animation_SlideEnd && count2 > 20) {
		sprite_index = S_Button_Animation_Run;
	}
}

if (colWall > 0) {
	hspeed = 0;
	vspeed = -2;
	image_angle = 90;
	alarm_set(0, 2);
}