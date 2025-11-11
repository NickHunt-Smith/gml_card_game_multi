
if text_rolling = true && narrator != "scene_transition" && alpha_story_frame = 1 && narrator != "combat_transition" { 
	if chars_revealed != string_length(text) {
		chars_revealed = string_length(text); 
	} else {
		text_rolling = false;
	}
}