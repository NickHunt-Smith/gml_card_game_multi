/// @description Insert description here
// You can write your code in this editor

if (global.player_enabled = true) && global.stack_active = false {
	
	if global.opponent.passed = true {
		global.player_enabled = false;
		global.wait_for_effect = false;
		global.end_turn_active = true;
		global.opponent.passed = false;
	} else {
		global.player.passed = true;
		global.priority = "opp";
	}
	
}
	
if global.targeting = true && global.big_mode = false {
	global.source_target.target = self;
}

if global.stack_active = true && global.resolve_stack = false && global.targeting = false && global.priority = "player" {
	global.player_enabled = false;
	if global.spell_stack[array_length(global.spell_stack)-1].opp = false {
		global.priority = "opp";
	} else {
		global.resolve_stack = true;
	}
}

//if global.stack_active = true && global.targeting = false {
//	global.resolve_stack = true;
//}