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
		card_state.target_arrows_enabled = true;
		card_state.target_1 = target_1;
	}
}

if wait_stack = true {
	if instance_exists(target_1) = false or target_1.position = "end_turn" {
		skip_target = true;
	}
	if (opp = true && scr_check_if_targets("player") = false) or (opp = false && scr_check_if_targets("opp") = false) {
		skip_target = true;
	}
	alarm[2] = 10;
	wait_stack = false;
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	
	if target != noone {
		target_1 = target;
		target = noone;
	}
	if target_1 != noone {	
		
		if global.pvp_active = true && opp=false && ignore_buffer = false{
			var _b = buffer_create(1,buffer_grow,1)
			buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PLAYED_SPELL)
			var card_details = string(card_state.card_type) + "," + string(card_state.rarity) + "," + string(card_state.element) + "," + string(card_state.card_index) 
			if target_1 = noone {
				card_details = card_details + ",noone";
			} else {
				card_details = card_details + "," + string(target_1.position);
			}
			if target_2 = noone {
				card_details = card_details + ",noone";
			} else {
				card_details = card_details + "," + string(target_2.position);
			}
			if target_3 = noone {
				card_details = card_details + ",noone";
			} else {
				card_details = card_details + "," + string(target_3.position);
			}
			buffer_write(_b,buffer_string,card_details)
			steam_net_packet_send(global.other_id,_b)
			buffer_delete(_b)
		}
		
		draw_instructions_1 = false;
			
		if sys_eff_instructions != noone {
			part_emitter_destroy_all(sys_eff_instructions);
		}
			
		//if global.priority = "player" && global.no_pass_prio = false {
		//	global.priority = "opp";
		//} else {
		//	global.no_pass_prio = false;
		//}
		global.player_enabled = true;
			
		global.targeting = false;
		wait_target = true;
		
		card_state.target_arrows_enabled = true;
		card_state.target_1 = target_1;
	}
}