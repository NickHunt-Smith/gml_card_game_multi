/// @description Insert description here
// You can write your code in this editor

if eff_type = "created" && instance_exists(card_state) {
	card_state.tooltip_extra = true;
	card_state.tooltip_text = "Consumed";
	card_state.tooltip_text_plural = false;
	
	if opp = true {
		card_state.tooltip_counter = global.opponent.consumed;
	} else {
		card_state.tooltip_counter = global.player.consumed;
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
			
			card_state.tooltip_extra = true;
			card_state.tooltip_text = "Consumed";
			card_state.tooltip_text_plural = false;
			
			if opp = false {
				surge_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_amethyst);
				seq_change_channel_1 = scr_change_numbers(global.player.consumed,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				seq_change_channel_2 = scr_change_numbers(global.player.consumed,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				global.channelled_left_player_amethyst += global.player.consumed;
				global.channelled_right_player_amethyst += global.player.consumed;
			} else {
				surge_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_amethyst);
				seq_change_channel_1 = scr_change_numbers(global.opponent.consumed,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				seq_change_channel_2 = scr_change_numbers(global.opponent.consumed,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				global.channelled_left_opp_amethyst += global.opponent.consumed;
				global.channelled_right_opp_amethyst += global.opponent.consumed; 
			}
			alarm[1] = 80; 
			
			wait = true;
		}
	}
}

if eff_type = "lingering" {
	if opp = true {
		card_state.tooltip_counter = global.opponent.consumed;
	} else {
		card_state.tooltip_counter = global.player.consumed;
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