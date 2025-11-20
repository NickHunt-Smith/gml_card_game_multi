var resize_scale = view_wport[1]/1280;
if mouse_x > x-52*resize_scale && mouse_x < x+52*resize_scale && mouse_y > y-27*resize_scale && mouse_y < y+27*resize_scale {
	if hover_effect = noone {
		if global.story_active = true {
			hover_effect = part_system_create(Ps_duel_highlight_story);
		} else {
			hover_effect = part_system_create(Ps_duel_highlight);
		}
		part_system_position(hover_effect, x, y);
		part_system_depth(hover_effect,depth+1);
	}
} else {
	if hover_effect != noone {
		part_system_destroy(hover_effect);
		hover_effect = noone;
	}
}