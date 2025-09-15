/// @description Insert description here
// You can write your code in this editor

if global.targeting = true && moused = true && global.big_mode = false && global.targeting_empty = false && global.targeting_spell = false && global.targeting_hand = false{
	if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
		global.source_target.target = self;
		if target_highlight != noone {
			part_system_destroy(target_highlight);
		}
		highlighted = false;
		global.targeting = false;
	}
}