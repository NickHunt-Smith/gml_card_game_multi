/// @description Insert description here
// You can write your code in this editor

if big_mode = true {
	x = x_memory;
	y = y_memory;
	global.big_mode = false;
	big_mode = false;
	if global.drafting = false && global.targeting = false && enable_player_after_big_mode = true {
		global.player_enabled = true;
		enable_player_after_big_mode = false;
	}
	depth = -800;
}

if global.targeting_spell = true && moused = true && global.big_mode = false {
	if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
		global.source_target.target = self;
		if target_highlight != noone {
			part_system_destroy(target_highlight);
			target_highlight = noone;
		}
		highlighted = false;
	}
}