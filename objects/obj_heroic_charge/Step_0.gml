/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else if opp = false {
		if scr_check_if_targets("player") = false or scr_check_if_targets("opp") = false {
			wait = true;
			wait_target = true;
			//global.priority = "opp";
		} else {
			sys_eff_instructions = part_system_create(Ps_eff_instructions);
			part_system_position(sys_eff_instructions, 1527,100);
			part_system_depth(sys_eff_instructions,-1100);
			draw_instructions_1 = true;
		
			instance_create_depth(x,y,-1100,obj_target_arrow);
			global.player_enabled = false;
			wait = true;
			global.source_target = self;
			allowed_target_opp = false;
		}
	} else {
		wait = true;
		wait_target = true;
	}
}

if wait_stack = true {
	if instance_exists(target_1) = false or instance_exists(target_2) = false {
		skip_target = true;
	}
	alarm[4] = 10;
	wait_stack = false;
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	if target != noone && first_targeted = false && target.position != "end_turn" {
		if (opp = true && target.opp = true) or (opp = false && target.opp = false) {
			target_1 = target;
			target = noone;
			first_targeted = true;
		
			draw_instructions_1 = false;
			draw_instructions_2 = true;
		
			instance_create_depth(x,y,-1100,obj_target_arrow);
			global.player_enabled = false;
			wait = true;
			global.source_target = self;
			allowed_target_opp = true;
			allowed_target_player = false;
		}
	}
	if target != noone && first_targeted = true && target.position != "end_turn" {
		if (opp = true && target.opp = false) or (opp = false && target.opp = true) {
			target_2 = target;
			target = noone;
		}
	}
	if target_1 != noone && target_2 != noone {
		if sys_eff_instructions != noone {
			part_emitter_destroy_all(sys_eff_instructions);
		}
		draw_instructions_1 = false;
		draw_instructions_2 = false;
			
		//if global.priority = "player" && global.no_pass_prio = false {
		//	global.priority = "opp";
		//} else {
		//	global.no_pass_prio = false;
		//} 
		//if global.priority = "opp" {
		//	global.priority = "player";
		//	global.player_enabled = true;
		//}
		global.player_enabled = true;
			
		global.targeting = false;
		wait_target = true;
		
		card_state.target_arrows_enabled = true;
		card_state.target_1 = target_1;
		card_state.target_2 = target_2;
	}
}