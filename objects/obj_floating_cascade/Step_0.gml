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
					if target_1.is_empty = true {
						card_details = card_details + "_empty";
					}
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
			
			if target_empty != noone {
				instance_destroy(target_empty);
				target_empty = noone;
			}
			
			instance_destroy();
		} else {
			x += 112;
			y += 184;
			wait = true;
		
			if opp = false {
				instance_create_depth(x,y,-1100,obj_target_arrow);
				global.player_enabled = false;
				global.source_target = self;
			
				sys_eff_instructions = part_system_create(Ps_eff_instructions);
				part_system_position(sys_eff_instructions, 1527,100);
				part_system_depth(sys_eff_instructions,-1100);
				draw_instructions = true;
				global.targeting_empty_nonempty = true;
				target_empty = instance_create_depth(0,0,0,obj_target_empty);
				allowed_target_opp = false;
			}
		}
	}
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	if opp = true {
		wait_target = true;
		//target_1 = target;
		if target_1 = noone or target_1.position = "end_turn" {
			seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
			alarm[1] = 60;
		} else {
			wave_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_wave);
			alarm[2] = 30;
		}
	} else if target != noone {
		target_1 = target;
		if target_1.position = "end_turn" or instance_exists(target_1) = false {
			global.targeting = false;
			part_emitter_destroy_all(sys_eff_instructions);
			draw_instructions = false;
			wait_target = true;
			alarm[1] = 10;
		} else {
			part_emitter_destroy_all(sys_eff_instructions);
			draw_instructions = false;
			wave_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_wave);
			alarm[2] = 30;
			wait_target = true;
		}
		global.targeting = false;
		global.targeting_empty_nonempty = false;
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