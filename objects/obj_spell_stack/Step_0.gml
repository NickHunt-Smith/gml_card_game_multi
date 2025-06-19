/// @description Insert description here
// You can write your code in this editor

if global.resolve_stack = true && global.drafting = false && global.end_game_trigger = false && global.lingering_active = false {
	if eff_first = true {
		eff_function_inst_stack = global.spell_stack[array_length(global.spell_stack)-1].effect_function_inst;
		global.spell_stack[array_length(global.spell_stack)-1].effect_function_inst.wait_stack = true;
		eff_first = false;
	} else {
		if instance_exists(eff_function_inst_stack) = false && array_length(global.being_destroyed) = 0 {
			array_delete(global.spell_stack,array_length(global.spell_stack)-1,1);
			if array_length(global.spell_stack) = 0 {
				if global.pvp_active = true {
					alarm[1] = 1;
				} else {
					global.resolve_stack = false;
					global.stack_active = false;
					instance_destroy();
					if global.priority = "player" {
						global.player_enabled = true;
					}
				}
			} else {
				eff_function_inst_stack = global.spell_stack[array_length(global.spell_stack)-1].effect_function_inst;
				alarm[0] = 30;
			}
		}
	}
}
	