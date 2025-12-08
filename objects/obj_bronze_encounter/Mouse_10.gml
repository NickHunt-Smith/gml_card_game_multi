if global.story_active = false && unlocked = true {
	if hover_effect = noone && encounter_frame = noone && global.encounter_visible = false {
		hover_effect = part_system_create(Ps_town_highlight);
		part_system_position(hover_effect, x, y);
		part_system_depth(hover_effect,depth+1);
	}
}