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
			spell_discard = noone;
			var max_rarity = 0;
			if opp = true {
				for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
					if global.cards_in_hand[_i].rarity >= max_rarity && global.cards_in_hand[_i].card_type = 1 {
						max_rarity = global.cards_in_hand[_i].rarity;
						spell_discard = global.cards_in_hand[_i];
					}
				}
			} else {
				for (var _i = 0; _i < array_length(global.opponent.hand_rarity); _i++) {
					if global.opponent.hand_rarity[_i] >= max_rarity && global.opponent.hand_card_type[_i] = 1 {
						max_rarity = global.opponent.hand_rarity[_i];
						spell_discard = global.cards_in_hand_opp[_i];
					}
				}
			}
			
			if spell_discard != noone {
				discard_seq = layer_sequence_create("above_cards",spell_discard.x,spell_discard.y,seq_discard);
				alarm[3] = 20;
			} else {
				seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
				alarm[1] = 80;
			}
			
			wait = true;
		}
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