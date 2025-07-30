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
				if global.player_locale_1 != noone {
					if (global.player_locale_1.element = 3 && global.player_locale_1.rarity = 0 && global.player_locale_1.card_index = 1) or (global.player_locale_1.element = 3 && global.player_locale_1.rarity = 2 && global.player_locale_1.card_index = 0) or (global.player_locale_1.element = 3 && global.player_locale_1.rarity = 4 && global.player_locale_1.card_index = 0)  {
						channel_boost += global.player_locale_1.channel;
						strength_boost += global.player_locale_1.health_locale;
					}
				}
				if global.player_locale_2 != noone {
					if (global.player_locale_2.element = 3 && global.player_locale_2.rarity = 0 && global.player_locale_2.card_index = 1) or (global.player_locale_2.element = 3 && global.player_locale_2.rarity = 2 && global.player_locale_2.card_index = 0) or (global.player_locale_2.element = 3 && global.player_locale_2.rarity = 4 && global.player_locale_2.card_index = 0)  {
						channel_boost += global.player_locale_2.channel;
						strength_boost += global.player_locale_2.health_locale;
					}
				}
				if global.player_locale_3 != noone {
					if (global.player_locale_3.element = 3 && global.player_locale_3.rarity = 0 && global.player_locale_3.card_index = 1) or (global.player_locale_3.element = 3 && global.player_locale_3.rarity = 2 && global.player_locale_3.card_index = 0) or (global.player_locale_3.element = 3 && global.player_locale_3.rarity = 4 && global.player_locale_3.card_index = 0)  {
						channel_boost += global.player_locale_3.channel;
						strength_boost += global.player_locale_3.health_locale;
					}
				}
				if global.player_locale_4 != noone {
					if (global.player_locale_4.element = 3 && global.player_locale_4.rarity = 0 && global.player_locale_4.card_index = 1) or (global.player_locale_4.element = 3 && global.player_locale_4.rarity = 2 && global.player_locale_4.card_index = 0) or (global.player_locale_4.element = 3 && global.player_locale_4.rarity = 4 && global.player_locale_4.card_index = 0)  {
						channel_boost += global.player_locale_4.channel;
						strength_boost += global.player_locale_4.health_locale;
					}
				}
				if global.opp_locale_1 != noone {
					if (global.opp_locale_1.element = 3 && global.opp_locale_1.rarity = 0 && global.opp_locale_1.card_index = 1) or (global.opp_locale_1.element = 3 && global.opp_locale_1.rarity = 2 && global.opp_locale_1.card_index = 0) or (global.opp_locale_1.element = 3 && global.opp_locale_1.rarity = 4 && global.opp_locale_1.card_index = 0)  {
						channel_boost += global.opp_locale_1.channel;
						strength_boost += global.opp_locale_1.health_locale;
					}
				}
				if global.opp_locale_2 != noone {
					if (global.opp_locale_2.element = 3 && global.opp_locale_2.rarity = 0 && global.opp_locale_2.card_index = 1) or (global.opp_locale_2.element = 3 && global.opp_locale_2.rarity = 2 && global.opp_locale_2.card_index = 0) or (global.opp_locale_2.element = 3 && global.opp_locale_2.rarity = 4 && global.opp_locale_2.card_index = 0)  {
						channel_boost += global.opp_locale_2.channel;
						strength_boost += global.opp_locale_2.health_locale;
					}
				}
				if global.opp_locale_3 != noone {
					if (global.opp_locale_3.element = 3 && global.opp_locale_3.rarity = 0 && global.opp_locale_3.card_index = 1) or (global.opp_locale_3.element = 3 && global.opp_locale_3.rarity = 2 && global.opp_locale_3.card_index = 0) or (global.opp_locale_3.element = 3 && global.opp_locale_3.rarity = 4 && global.opp_locale_3.card_index = 0)  {
						channel_boost += global.opp_locale_3.channel;
						strength_boost += global.opp_locale_3.health_locale;
					}
				}
				if global.opp_locale_4 != noone {
					if (global.opp_locale_4.element = 3 && global.opp_locale_4.rarity = 0 && global.opp_locale_4.card_index = 1) or (global.opp_locale_4.element = 3 && global.opp_locale_4.rarity = 2 && global.opp_locale_4.card_index = 0) or (global.opp_locale_4.element = 3 && global.opp_locale_4.rarity = 4 && global.opp_locale_4.card_index = 0)  {
						channel_boost += global.opp_locale_4.channel;
						strength_boost += global.opp_locale_4.health_locale;
					}
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
		
		// Channel eff
		if card_state.channel > 0 {
			if (card_state.position = "left_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y + 440,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_player,0,array_length(global.channelled_left_player));
				array_sort(channel_copy,false);
				if global.channelled_left_player_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				}
				global.channelled_left_player_sapphire += card_state.channel;
			} else if (card_state.position = "left_middle_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 30,y + 490,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_player,0,array_length(global.channelled_left_player));
				array_sort(channel_copy,false);
				if global.channelled_left_player_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				}
				global.channelled_left_player_sapphire += card_state.channel;
			} else if (card_state.position = "right_middle_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y + 440,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_player,0,array_length(global.channelled_right_player));
				array_sort(channel_copy,false);
				if global.channelled_right_player_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				}
				global.channelled_right_player_sapphire += card_state.channel;
			} else if (card_state.position = "right_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 30,y + 490,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_player,0,array_length(global.channelled_right_player));
				array_sort(channel_copy,false);
				if global.channelled_right_player_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				}
				global.channelled_right_player_sapphire += card_state.channel;
			} else if (card_state.position = "left_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y -60,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_opp,0,array_length(global.channelled_left_opp));
				array_sort(channel_copy,false);
				if global.channelled_left_opp_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				}
				global.channelled_left_opp_sapphire += card_state.channel;
			} else if (card_state.position = "left_middle_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 70,y -60,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_opp,0,array_length(global.channelled_left_opp));
				array_sort(channel_copy,false);
				if global.channelled_left_opp_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				}
				global.channelled_left_opp_sapphire += card_state.channel;
			} else if (card_state.position = "right_middle_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y -60,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_opp,0,array_length(global.channelled_right_opp));
				array_sort(channel_copy,false);
				if global.channelled_right_opp_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				}
				global.channelled_right_opp_sapphire += card_state.channel;
			} else if (card_state.position = "right_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 70,y -60,seq_channel_sapphire);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_opp,0,array_length(global.channelled_right_opp));
				array_sort(channel_copy,false);
				if global.channelled_right_opp_sapphire = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				}
				global.channelled_right_opp_sapphire += card_state.channel;
			}
		}
		
		if card_state.frozen = true {
			card_state.frozen = false;
			card_state.channel = card_state.memory_channel;
		}
	
		wait = true;
	
		alarm[0] = 100;
	}
	
}