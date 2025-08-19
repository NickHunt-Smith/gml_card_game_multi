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
			if boosting = false {
				channel_boost = 0;
				strength_boost = 0;
				var neighbour_1 = noone;
				var neighbour_2 = noone;
				if card_state.position = "left_player" {
					neighbour_1 = global.player_locale_2
				} else if card_state.position = "left_middle_player" {
					neighbour_1 = global.player_locale_1
					neighbour_2 = global.player_locale_3
				} else if card_state.position = "right_middle_player" {
					neighbour_1 = global.player_locale_4
					neighbour_2 = global.player_locale_2
				} else if card_state.position = "right_player" {
					neighbour_1 = global.player_locale_3
				} else if card_state.position = "left_opp" {
					neighbour_1 = global.opp_locale_2
				} else if card_state.position = "left_middle_opp" {
					neighbour_1 = global.opp_locale_1
					neighbour_2 = global.opp_locale_3
				} else if card_state.position = "right_middle_opp" {
					neighbour_1 = global.opp_locale_4
					neighbour_2 = global.opp_locale_2
				} else if card_state.position = "right_opp" {
					neighbour_1 = global.opp_locale_3
				}
				
				if neighbour_1 != noone {
					channel_boost += neighbour_1.channel;
					strength_boost += neighbour_1.health_locale;
				}
				if neighbour_2 != noone {
					channel_boost += neighbour_2.channel;
					strength_boost += neighbour_2.health_locale;
				}
			
				if strength_boost > 0 {
					fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
					seq_change_health_1 = scr_change_numbers(strength_boost,card_state.x+global.health_offset_x,card_state.y+328);
					card_state.health_locale += strength_boost;
				
					seq_change_health_2 = scr_change_numbers(channel_boost,card_state.x+global.channel_offset_x,card_state.y + 328);
					if card_state.frozen = true {
						card_state.memory_channel += channel_boost;
					} else {
						card_state.channel += channel_boost;
					}
					boosting = true;
					alarm[3] = 100; 
				} else {
					wait = false;
					eff_done = true;
					boosting = true;
				}
			}
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