var leftClick = mouse_check_button_pressed(mb_left);

if (position_meeting(mouse_x, mouse_y, id)) {
	if (selection == noone) {
		selection = instance_create_layer(x, y, "Selection", O_Button_Selected);
		textZone = instance_create_layer(x, y, "Selection", O_TextZone);
		textZone.image_xscale = textSize;
		wall = instance_create_layer(x + 314, y + 12, "Selection", O_ButtonWall);
		wall.image_yscale = 2;
	}
	if (animation == noone) {
		animation = instance_create_layer(x - 272, y + 24, "Selection", O_Button_Animation);
		animation.buttonID = id;
	}
	
	if (leftClick) {
		fonction();
		audio_play_sound(SO_Button, 1, false);
	}
}
else {
	if (selection != noone) {
		instance_destroy(selection);
		selection = noone;
		instance_destroy(textZone);
		textZone = noone;
		instance_destroy(wall);
		wall = noone;
	}
	if (animation != noone) {
		instance_destroy(animation);
		animation = noone;
	}
}