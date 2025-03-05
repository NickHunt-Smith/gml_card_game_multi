/// @description Insert description here
// You can write your code in this editor

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
	
	instance_destroy();
}

if eff_type = "lingering" {
	var channel_total = 0;
	if global.player_locale_1 != noone {
		if (global.player_locale_1.rarity = 3 && global.player_locale_1.element = 2 && global.player_locale_1.card_index = 2) && global.player_locale_1.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.player_locale_2 != noone {
		if (global.player_locale_2.rarity = 3 && global.player_locale_2.element = 2 && global.player_locale_2.card_index = 2) && global.player_locale_2.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.player_locale_3 != noone {
		if (global.player_locale_3.rarity = 3 && global.player_locale_3.element = 2 && global.player_locale_3.card_index = 2) && global.player_locale_3.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.player_locale_4 != noone {
		if (global.player_locale_4.rarity = 3 && global.player_locale_4.element = 2 && global.player_locale_4.card_index = 2) && global.player_locale_4.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.opp_locale_1 != noone {
		if (global.opp_locale_1.rarity = 3 && global.opp_locale_1.element = 2 && global.opp_locale_1.card_index = 2) && global.opp_locale_1.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.opp_locale_2 != noone {
		if (global.opp_locale_2.rarity = 3 && global.opp_locale_2.element = 2 && global.opp_locale_2.card_index = 2) && global.opp_locale_2.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.opp_locale_3 != noone {
		if (global.opp_locale_3.rarity = 3 && global.opp_locale_3.element = 2 && global.opp_locale_3.card_index = 2) && global.opp_locale_3.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	if global.opp_locale_4 != noone {
		if (global.opp_locale_4.rarity = 3 && global.opp_locale_4.element = 2 && global.opp_locale_4.card_index = 2) && global.opp_locale_4.position != card_state.position {
			channel_total += channel_bonus;
		}
	}
	
	if card_state.frozen = true {
		card_state.memory_channel = channel_base + channel_total;
	} else {
		card_state.channel = channel_base + channel_total;
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
				channel_seq = layer_sequence_create("effect_layer",x + 180,y + 440,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_player,0,array_length(global.channelled_left_player));
				array_sort(channel_copy,false);
				if global.channelled_left_player_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				}
				global.channelled_left_player_onyx += card_state.channel;
			} else if (card_state.position = "left_middle_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 30,y + 490,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_player,0,array_length(global.channelled_left_player));
				array_sort(channel_copy,false);
				if global.channelled_left_player_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				}
				global.channelled_left_player_onyx += card_state.channel;
			} else if (card_state.position = "right_middle_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y + 440,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_player,0,array_length(global.channelled_right_player));
				array_sort(channel_copy,false);
				if global.channelled_right_player_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				}
				global.channelled_right_player_onyx += card_state.channel;
			} else if (card_state.position = "right_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 30,y + 490,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_player,0,array_length(global.channelled_right_player));
				array_sort(channel_copy,false);
				if global.channelled_right_player_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				}
				global.channelled_right_player_onyx += card_state.channel;
			} else if (card_state.position = "left_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y -60,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_opp,0,array_length(global.channelled_left_opp));
				array_sort(channel_copy,false);
				if global.channelled_left_opp_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				}
				global.channelled_left_opp_onyx += card_state.channel;
			} else if (card_state.position = "left_middle_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 70,y -60,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_opp,0,array_length(global.channelled_left_opp));
				array_sort(channel_copy,false);
				if global.channelled_left_opp_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				}
				global.channelled_left_opp_onyx += card_state.channel;
			} else if (card_state.position = "right_middle_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y -60,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_opp,0,array_length(global.channelled_right_opp));
				array_sort(channel_copy,false);
				if global.channelled_right_opp_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				}
				global.channelled_right_opp_onyx += card_state.channel;
			} else if (card_state.position = "right_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 70,y -60,seq_channel_onyx);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_opp,0,array_length(global.channelled_right_opp));
				array_sort(channel_copy,false);
				if global.channelled_right_opp_onyx = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				}
				global.channelled_right_opp_onyx += card_state.channel;
			}
		}
		
		if card_state.frozen = true {
			card_state.frozen = false;
			card_state.channel = card_state.memory_channel;
		}
		
		wait = true;
		alarm[2] = 100;
		
	}
}