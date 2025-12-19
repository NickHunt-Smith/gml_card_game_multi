if draw_black = true {
	draw_sprite_ext(s_spell_background,0,0.5*view_wport[0],0.5*view_hport[0],20,20,0,c_black,1);
} else {
	draw_self();
}