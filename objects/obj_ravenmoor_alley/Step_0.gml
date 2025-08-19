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

// Opposite target
if eff_type = "lingering" && global.lingering_active = false {
	if card_state.was_damaged = true {
		global.lingering_active = true;
		if global.player_enabled = true {
			global.player_enabled = false;
			enable_player = true;
		}
		
		card_state.was_damaged = false;
		
		if opp = false {
				
			if (global.opp_locale_1 = noone && card_state.position = "left_player") or (global.opp_locale_2 = noone && card_state.position = "left_middle player") or (global.opp_locale_3 = noone && card_state.position = "right_middle_player") or (global.opp_locale_4 = noone && card_state.position = "right_player"){
				seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
				alarm[1] = 60;
			} else {
				if card_state.position = "left_player" {
					target_1 = global.opp_locale_1;
				} else if card_state.position = "left_middle_player" {
					target_1 = global.opp_locale_2;
				} else if card_state.position = "right_middle_player" {
					target_1 = global.opp_locale_3;
				} else if card_state.position = "right_player" {
					target_1 = global.opp_locale_4;
				}
				alarm[3] = 10;
			}
		} else {
			
			if (global.player_locale_1 = noone && card_state.position = "left_opp") or (global.player_locale_2 = noone && card_state.position = "left_middle opp") or (global.player_locale_3 = noone && card_state.position = "right_middle_opp") or (global.player_locale_4 = noone && card_state.position = "right_opp"){
				seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
				alarm[1] = 60;
			} else {
				if card_state.position = "left_opp" {
					target_1 = global.player_locale_1;
				} else if card_state.position = "left_middle_opp" {
					target_1 = global.player_locale_2;
				} else if card_state.position = "right_middle_opp" {
					target_1 = global.player_locale_3;
				} else if card_state.position = "right_opp" {
					target_1 = global.player_locale_4;
				}
				alarm[3] = 10;
			}
		}
	}
}

//// Random target
//if eff_type = "lingering" {
//	if card_state.was_damaged = true {
//		card_state.was_damaged = false;
		
//		if opp = false {
				
//			if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
//				seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
//				alarm[1] = 60;
//			} else {
//				while (target_1 = noone) {
//					var temp = random(100);
//					if temp < 25 {
//						target_1 = global.opp_locale_1;
//					} else if (temp >= 25) && (temp < 50) {
//						target_1 = global.opp_locale_2;
//					} else if (temp >= 50) && (temp < 75) {
//						target_1 = global.opp_locale_3;
//					} else if (temp >= 75) {
//						target_1 = global.opp_locale_4;
//					}
//				}
//				alarm[3] = 10;
//			}
//		} else {
			
//			if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
//				seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
//				alarm[1] = 60;
//			} else {
//				while (target_1 = noone) {
//					var temp = random(100);
//					if temp < 25 {
//						target_1 = global.player_locale_1;
//					} else if (temp >= 25) && (temp < 50) {
//						target_1 = global.player_locale_2;
//					} else if (temp >= 50) && (temp < 75) {
//						target_1 = global.player_locale_3;
//					} else if (temp >= 75) {
//						target_1 = global.player_locale_4;
//					}
//				}
//				alarm[3] = 10;
//			}
//		}
//	}
//}

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