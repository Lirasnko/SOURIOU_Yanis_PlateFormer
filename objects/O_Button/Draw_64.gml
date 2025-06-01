draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(F_Achron36);
if (selection == noone) {
	draw_text_color(x, y, name, c_white, c_white, c_gray, c_gray, 1);
}
else {
	draw_text_color(x, y, name, c_white, c_white, #00FF00, #00FF00, 1);
}