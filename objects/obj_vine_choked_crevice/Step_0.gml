/// @description Insert description here
// You can write your code in this editor

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
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

if eff_type = "destroyed" && destroyed_eff_done = false {
	
	targets = []; 
	if opp = false {
		if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
			seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		} else {
			if global.player_locale_1 != noone {
				array_push(targets,global.player_locale_1);
			}
			if global.player_locale_2 != noone {
				array_push(targets,global.player_locale_2);
			}
			if global.player_locale_3 != noone {
				array_push(targets,global.player_locale_3);
			}
			if global.player_locale_4 != noone {
				array_push(targets,global.player_locale_4);
			}
		}
	} else {
		if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
			seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		} else {
			if global.opp_locale_1 != noone {
				array_push(targets,global.opp_locale_1);
			}
			if global.opp_locale_2 != noone {
				array_push(targets,global.opp_locale_2);
			}
			if global.opp_locale_3 != noone {
				array_push(targets,global.opp_locale_3);
			}
			if global.opp_locale_4 != noone {
				array_push(targets,global.opp_locale_4);
			}
		}
	} 

	if seq_no_target = noone {
		fortify_seqs = [];
		seq_restore_change_1s = [];
		seq_restore_change_2s = [];
		for (var _i = 0; _i < array_length(targets); _i++) {
			if targets[_i].position != card_state.position {
				array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
				array_push(seq_restore_change_1s,scr_change_numbers(restore_amount,targets[_i].x+global.health_offset_x,targets[_i].y+328));
				array_push(seq_restore_change_2s,scr_change_numbers(restore_amount,targets[_i].x+global.channel_offset_x,targets[_i].y+328));
				if targets[_i].frozen = true {
					targets[_i].memory_channel += restore_amount;
				} else {
					targets[_i].channel += restore_amount;
				}
				targets[_i].health_locale += restore_amount;
			}
		}
	}
	
	array_push(global.destroy_effects,0);
	
	alarm[1] = 90;
	
	destroyed_eff_done = true;
}

if (eff_type = "end_turn") && (wait = false) {
	if eff_done = true {
		global.wait_for_effect = false;
		instance_destroy();
	} else {
		
		// Channel eff
		if card_state.channel > 0 {
			if (card_state.position = "left_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y + 440,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_player,0,array_length(global.channelled_left_player));
				array_sort(channel_copy,false);
				if global.channelled_left_player_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				}
				global.channelled_left_player_emerald += card_state.channel;
			} else if (card_state.position = "left_middle_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 55,y + 440,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_player,0,array_length(global.channelled_left_player));
				array_sort(channel_copy,false);
				if global.channelled_left_player_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
				}
				global.channelled_left_player_emerald += card_state.channel;
			} else if (card_state.position = "right_middle_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y + 440,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_player,0,array_length(global.channelled_right_player));
				array_sort(channel_copy,false);
				if global.channelled_right_player_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				}
				global.channelled_right_player_emerald += card_state.channel;
			} else if (card_state.position = "right_player") {
				channel_seq = layer_sequence_create("effect_layer",x + 55,y + 440,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_player,0,array_length(global.channelled_right_player));
				array_sort(channel_copy,false);
				if global.channelled_right_player_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
				}
				global.channelled_right_player_emerald += card_state.channel;
			} else if (card_state.position = "left_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y -60,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_opp,0,array_length(global.channelled_left_opp));
				array_sort(channel_copy,false);
				if global.channelled_left_opp_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				}
				global.channelled_left_opp_emerald += card_state.channel;
			} else if (card_state.position = "left_middle_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 70,y -60,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_left_opp,0,array_length(global.channelled_left_opp));
				array_sort(channel_copy,false);
				if global.channelled_left_opp_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
				}
				global.channelled_left_opp_emerald += card_state.channel;
			} else if (card_state.position = "right_middle_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 180,y -60,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,150+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_opp,0,array_length(global.channelled_right_opp));
				array_sort(channel_copy,false);
				if global.channelled_right_opp_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				}
				global.channelled_right_opp_emerald += card_state.channel;
			} else if (card_state.position = "right_opp") {
				channel_seq = layer_sequence_create("effect_layer",x + 70,y -60,seq_channel_emerald);
				layer_sequence_speedscale(channel_seq,1);
				layer_sequence_angle(channel_seq,210+180);
				var channel_copy = [];
				array_copy(channel_copy,0,global.channelled_right_opp,0,array_length(global.channelled_right_opp));
				array_sort(channel_copy,false);
				if global.channelled_right_opp_emerald = channel_copy[0] {
					seq_change_health = scr_change_numbers(card_state.channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
				}
				global.channelled_right_opp_emerald += card_state.channel;
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