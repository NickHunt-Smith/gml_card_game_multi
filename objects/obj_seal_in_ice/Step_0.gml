/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else if opp = false {
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
	if instance_exists(target_1) = false {
		skip_target = true;
	}
	wait_stack = false;
	alarm[2] = 10;
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	
	if target != noone {
		target_1 = target;
		target = noone;
	}
	if target_1 != noone && target_1.position != "end_turn" {
		
		draw_instructions_1 = false;
			
		if sys_eff_instructions != noone {
			part_emitter_destroy_all(sys_eff_instructions);
		}
		
		global.targeting = false;
		global.targeting_spell = false;
		global.player_enabled = true;
		wait_target = true;
		
		card_state.target_arrows_enabled = true;
		card_state.target_1 = target_1;
	}
}