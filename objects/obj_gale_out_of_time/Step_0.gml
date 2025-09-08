/// @description Insert description here
// You can write your code in this editor

if eff_type = "created" && instance_exists(card_state) {
	card_state.tooltip_extra = true;
	card_state.tooltip_text = "Void";
	card_state.tooltip_text_plural = true;
	
	if opp = true {
		card_state.tooltip_counter = global.opponent.voids;
	} else {
		card_state.tooltip_counter = global.player.voids;
	}
}

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
			
			if opp = true {
				restore_amount = global.opponent.voids;
			} else {
				restore_amount = global.player.voids;
			}
			
			fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
			seq_restore_change_1 = scr_change_numbers(restore_amount,card_state.x+global.health_offset_x,card_state.y+328);
			card_state.health_locale += restore_amount;

			seq_restore_change_2 = scr_change_numbers(restore_amount,card_state.x+global.channel_offset_x,card_state.y+328);
			if card_state.frozen = true {
				card_state.memory_channel += restore_amount;
			} else {
				card_state.channel += restore_amount;
			}
			alarm[1] = 100;
			
			wait = true;
		}
	}
}

if eff_type = "lingering" {
	
	if opp = true {
		card_state.tooltip_counter = global.opponent.voids;
	} else {
		card_state.tooltip_counter = global.player.voids;
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