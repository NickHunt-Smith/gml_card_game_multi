/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if global.resolve_stack = true {
		instance_destroy();
	} else {
		if eff_done = true {
			if global.pvp_active = true && opp=false && global.resolve_stack = false && ignore_buffer = false {
				var _b = buffer_create(1,buffer_grow,1)
				buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PLAYED_LOCALE)
				var card_details = string(card_state.position) + "," + string(card_state.card_type) + "," + string(card_state.rarity) + "," + string(card_state.element) + "," + string(card_state.card_index) 
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
			
			instance_destroy();
		} else {
			wait = true;
		
			if opp = false {
				x = x+112;
				y = y+184;
				instance_create_depth(x,y,-1100,obj_target_arrow);
				global.player_enabled = false;
				global.source_target = self;
			
				sys_eff_instructions = part_system_create(Ps_eff_instructions);
				part_system_position(sys_eff_instructions, 1527,100);
				part_system_depth(sys_eff_instructions,-1100);
				draw_instructions = true;
				global.targeting = true;
				global.targeting_hand = true;
				allowed_target_opp = false;
			} else {
				if target_1 != "hand" {
					card_state.health_locale = 0;
				} else {
					instance_destroy();
				}
			}
		}
	}
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	
	if target != noone {
		target_1 = target;
		target = noone;
	}
	if target_1 != noone {
		
		draw_instructions = false;
			
		if sys_eff_instructions != noone {
			part_emitter_destroy_all(sys_eff_instructions);
		}

		global.targeting_hand = false;
		global.targeting = false;
		
		if eff_type = "play" {
			if global.priority = "player" && opp = false && global.resolve_stack = false {
				global.priority = "opp";
			} 
		}
		
		if instance_exists(target_1) = true && target_1.position != "end_turn" {
			target_1.discarding = true;
		} else {
			card_state.health_locale = 0;
		}
		
		wait_target = true;
		
		wait = false;
		eff_done = true;
		
	}
}

if (eff_type = "end_turn") && (wait = false) {
	if eff_done = true {
		global.wait_for_effect = false;
		instance_destroy();
	} else {
		
		var seqs = scr_channel_element(card_state);
		channel_seq = seqs[0];
		seq_change_health = seqs[1];
		
		if card_state.frozen = true {
			card_state.frozen = false;
			card_state.channel = card_state.memory_channel;
		}
	
		wait = true;
	
		alarm[0] = 100;
	}
	
}