/// @description Insert description here
// You can write your code in this editor

if eff_type = "discarded" && wait = false {
	if global.player_enabled = true {
		global.player_enabled = false;
		player_reenable = true;
	}
	var x_future = 1527 - 140*(array_length(global.spell_stack)) +70*array_length(global.spell_stack);
	var y_future = 748;
	discard_play_seq = layer_sequence_create("effect_layer",x_future,y_future,seq_discard_play);
	alarm[3] = 20;
	wait = true;
}

if discard_variant = false {
	if (eff_type = "play") && (wait = false) {
		if eff_done = true {
			instance_destroy();
		} else {
			wait = true
			global.player_enabled = true;
		
			if global.pvp_active = true && opp=false && ignore_buffer = false {
				var _b = buffer_create(1,buffer_grow,1)
				buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PLAYED_SPELL)
				var card_details = string(card_state.card_type) + "," + string(card_state.rarity) + "," + string(card_state.element) + "," + string(card_state.card_index) 
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
			
			if opp = false {
				for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
					global.cards_in_hand[_i].discarding = true;
					global.cards_in_hand[_i].discard_seq = layer_sequence_create("above_cards",global.cards_in_hand[_i].x,global.cards_in_hand[_i].y,seq_discard);
					global.cards_in_hand[_i].alarm[3] = 20;
				}
			}
		}
	}

	if wait_stack = true {
		if opp = true {
			consume_clouds_1 = part_system_create(Ps_consume_element);
			part_system_position(consume_clouds_1, 1254, 100);
			part_system_depth(consume_clouds_1,-1100);
				
			consume_clouds_2 = part_system_create(Ps_consume_element);
			part_system_position(consume_clouds_2, 1784, 100);
			part_system_depth(consume_clouds_2,-1100);
		} else {
			consume_clouds_1 = part_system_create(Ps_consume_element);
			part_system_position(consume_clouds_1, 1254, 1400);
			part_system_depth(consume_clouds_1,-1100);
				
			consume_clouds_2 = part_system_create(Ps_consume_element);
			part_system_position(consume_clouds_2, 1784, 1400);
			part_system_depth(consume_clouds_2,-1100);
		}
		descent = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_havoc);
		alarm[2] = 40; 
		wait_stack = false;
	}
} else {
	if (eff_type = "play") && (wait = false) {
		if eff_done = true {
			instance_destroy();
		} else {
			wait = true
		
			if global.pvp_active = true && opp=false && ignore_buffer = false {
				var _b = buffer_create(1,buffer_grow,1)
				buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PLAYED_SPELL)
				var card_details = string(card_state.card_type) + "," + string(card_state.rarity) + "," + string(card_state.element) + "," + string(card_state.card_index) 
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
		}
	}

	if wait_stack = true {
		if opp = false {
			if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
				seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
				wait = true;
				alarm[9] = 80;
			} else {
				while (target_1 = noone) {
					var temp = random(100);
					if temp < 25 {
						target_1 = global.opp_locale_1;
					} else if (temp >= 25) && (temp < 50) {
						target_1 = global.opp_locale_2;
					} else if (temp >= 50) && (temp < 75) {
						target_1 = global.opp_locale_3;
					} else if (temp >= 75) {
						target_1 = global.opp_locale_4;
					}
				}
				wait = true;
				alarm[6] = 10;
			}
	
			wait_stack = false;
		} else {
			target_1 = noone;
			if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
				seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
				wait = true;
				alarm[9] = 80;
			} else {
				while (target_1 = noone) {
					var temp = random(100);
					if temp < 25 {
						target_1 = global.player_locale_1;
					} else if (temp >= 25) && (temp < 50) {
						target_1 = global.player_locale_2;
					} else if (temp >= 50) && (temp < 75) {
						target_1 = global.player_locale_3;
					} else if (temp >= 75) {
						target_1 = global.player_locale_4;
					}
				}
				wait = true;
				alarm[6] = 10;
			}
	
			wait_stack = false;
		
		}
	}
}