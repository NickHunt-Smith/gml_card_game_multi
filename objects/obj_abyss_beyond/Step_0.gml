/// @description Insert description here
// You can write your code in this editor

if eff_type = "created" && instance_exists(card_state) {
	card_state.tooltip_extra = true;
	card_state.tooltip_text = "Destroyed locale";
	card_state.tooltip_text_plural = true;
	
	if opp = true {
		card_state.tooltip_counter = array_length(global.opponent.destroyed_locales_rarity);
	} else {
		card_state.tooltip_counter = array_length(global.player.destroyed_locales_rarity);
	}
}

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
	
	card_state.tooltip_extra = true;
	card_state.tooltip_text = "Destroyed locale";
	card_state.tooltip_text_plural = true;
	
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
}

if eff_type = "lingering" {
	if opp = false {
		if array_length(global.player.destroyed_locales_rarity) >= channel_1_threshold && channel_2 = false {
			channel_up_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_channel_up);
			var seq_change_health = scr_change_numbers(bonus_channel_1,card_state.x+26,card_state.y + 328);
			alarm[1] = 100;
			if card_state.frozen = true {
				card_state.memory_channel += bonus_channel_1;
			} else {
				card_state.channel += bonus_channel_1;
			}
			channel_2 = true;
		}
		if array_length(global.player.destroyed_locales_rarity) >= channel_2_threshold && channel_3 = false {
			channel_up_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_channel_up);
			var seq_change_health = scr_change_numbers(bonus_channel_2,card_state.x+26,card_state.y + 328);
			alarm[1] = 100;
			if card_state.frozen = true {
				card_state.memory_channel += bonus_channel_2;
			} else {
				card_state.channel += bonus_channel_2;
			}
			channel_3 = true;
		}
	} else {
		if array_length(global.opponent.destroyed_locales_rarity) >= channel_1_threshold && channel_2 = false {
			channel_up_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_channel_up);
			var seq_change_health = scr_change_numbers(bonus_channel_1,card_state.x+26,card_state.y + 328);
			alarm[1] = 100;
			if card_state.frozen = true {
				card_state.memory_channel += bonus_channel_1;
			} else {
				card_state.channel += bonus_channel_1;
			}
			channel_2 = true;
		}
		if array_length(global.opponent.destroyed_locales_rarity) >= channel_2_threshold && channel_3 = false {
			channel_up_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_channel_up);
			var seq_change_health = scr_change_numbers(bonus_channel_2,card_state.x+26,card_state.y + 328);
			alarm[1] = 100;
			if card_state.frozen = true {
				card_state.memory_channel += bonus_channel_2;
			} else {
				card_state.channel += bonus_channel_2;
			}
			channel_3 = true;
		}
	}
	
	if opp = true {
		card_state.tooltip_counter = array_length(global.opponent.destroyed_locales_rarity);
	} else {
		card_state.tooltip_counter = array_length(global.player.destroyed_locales_rarity);
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