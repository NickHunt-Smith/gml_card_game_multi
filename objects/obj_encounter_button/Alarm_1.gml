if texture_is_ready("Default") = true {
	global.background_angle = background_angle;
	if encounter_name = "tutorial" {
		global.tutorial = true;
	} else {
		global.tutorial = false;
	}
	global.story_active = false;
	global.encounter_level = rarity;
	global.encounter_name = encounter_name;
	global.win_threshold = win_threshold;
	room_goto(PvP);
} else {
	alarm[1] = 1;
}