var leftClick = mouse_check_button_pressed(mb_left);

if (position_meeting(mouse_x, mouse_y, id)) {
	if (selection == noone) {
		selection = instance_create_layer(x, y, "Selection", O_Button_Selected);
		selection.image_xscale = image_xscale;
		selection.image_yscale = image_yscale;
	}
	
	if (leftClick) {
		fonction();
	}
}
else {
	if (selection != noone) {
		instance_destroy(selection);
		selection = noone;
	}
}