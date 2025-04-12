
if view_opp = false {
	draw_self();
}

if button_draw = true {
	if (mouse_x < 1527 + 48 and mouse_x > 1527 - 48) and (mouse_y < 753 + 48 and mouse_y > 753 - 48) {
		draw_sprite_ext(s_eye_button,0,1527,753,0.3,0.3,0,c_aqua,1);
	} else {
		draw_sprite_ext(s_eye_button,0,1527,753,0.3,0.3,0,c_white,1);
	}
}