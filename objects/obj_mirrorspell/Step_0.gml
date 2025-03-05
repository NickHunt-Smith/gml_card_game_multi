/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else if opp = false {
		allowed_target_opp = false;
		sys_eff_instructions = part_system_create(Ps_eff_instructions);
		part_system_position(sys_eff_instructions, 1527,100);
		part_system_depth(sys_eff_instructions,-1100);
		draw_instructions_1 = true;
		
		arrow = instance_create_depth(card_state.x,card_state.y,-1100,obj_target_arrow);
		global.player_enabled = false;
		global.targeting_spell = true;
		wait = true;
		global.source_target = self;
	} else {
		wait = true;
		wait_target = true;
		card_state.target_arrows_enabled = true;
		card_state.target_1 = target_1;
	}
}

if wait_stack = true {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 50;
	wait_stack = false;
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	
	if target != noone {
		target_1 = target;
		target = noone;
	}
	if target_1 != noone {
		
		draw_instructions_1 = false;
			
		if sys_eff_instructions != noone {
			part_emitter_destroy_all(sys_eff_instructions);
		}
		
		if target_1.position = "end_turn" {
			global.targeting = false;
			global.targeting_spell = false;
			//if global.priority = "player" && global.no_pass_prio = false {
			//	global.priority = "opp";
			//} else {
			//	global.no_pass_prio = false;
			//}
			global.player_enabled = true;
			wait_target = true;
		} else {
			global.targeting = false;
			array_delete(global.spell_stack,array_length(global.spell_stack)-1,1);
			var copy = scr_play_spell(opp,target_1.rarity,target_1.element,target_1.card_index,target_1.target_1,target_1.target_2,target_1.target_3);
			instance_destroy(card_state);
			instance_destroy();
		}	
	}
}