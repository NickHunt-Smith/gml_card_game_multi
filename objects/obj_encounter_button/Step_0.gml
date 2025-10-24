
if mouse_x > x-32 && mouse_x < x+32 && mouse_y > y-18 && mouse_y < y+18 {
	if hover_effect = noone {
		hover_effect = part_system_create(Ps_duel_highlight);
		part_system_position(hover_effect, x, y);
		part_system_depth(hover_effect,depth+1);
	}
} else {
	if hover_effect != noone {
		part_system_destroy(hover_effect);
		hover_effect = noone;
	}
}