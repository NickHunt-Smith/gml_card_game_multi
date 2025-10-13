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
		
		instance_create_depth(card_state.x,card_state.y,-1100,obj_target_arrow);
		global.player_enabled = false;
		global.targeting_hand = true;
		wait = true;
		global.source_target = self;
	} else {
		for (var _j = 0; _j < array_length(global.opponent.hand_rarity); _j++) {
			array_push(hand_rarity,global.opponent.hand_rarity[_j]);
			array_push(hand_card_type,global.opponent.hand_card_type[_j]);
		}
		wait = true;
		wait_target = true;
	}
}

if wait_stack = true {
	if opp = false {
		if target_1 = noone or target_1.position = "end_turn" {
			skip_target_1 = true;
		}
	} else {
		if target_1 != "hand" {
			skip_target_1 = true;
		}
	}
	alarm[1] = 10;
	wait_stack = false;
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	
	if target != noone {
		target_1 = target;
		target = noone;
	}
	if target_1 != noone {
		
		if global.pvp_active = true && opp=false && ignore_buffer = false {
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

		global.targeting_hand = false;
		global.targeting = false;
		
		if instance_exists(target_1) = true && target_1.position != "end_turn" {
			rarity_scry = target_1.rarity;
			card_type_scry = target_1.card_type;
			target_1.discarding = true;
		} else {
			global.player_enabled = true;
		}
		
		wait_target = true;
		
		card_state.target_arrows_enabled = true;
		card_state.target_1 = target_1;
	}
}