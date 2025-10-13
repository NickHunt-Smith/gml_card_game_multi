/// @description Insert description here
// You can write your code in this editor

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
	}
}

if wait_stack = true {
	var common_match = false;
	var uncommon_match = false;
	var rare_match = false;
	var mythic_match = false;
	var legendary_match = false;
	if opp = false {
		for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
			if global.cards_in_hand[_i].rarity = 0 {
				common_match = true;
			} else if global.cards_in_hand[_i].rarity = 1 {
				uncommon_match = true;
			} else if global.cards_in_hand[_i].rarity = 2 {
				rare_match = true;
			} else if global.cards_in_hand[_i].rarity = 3 {
				mythic_match = true;
			} else if global.cards_in_hand[_i].rarity = 4 {
				legendary_match = true;
			}
		}
	} else {
		for (var _i = 0; _i < array_length(global.cards_in_hand_opp); _i++) {
			if global.cards_in_hand_opp[_i].rarity = 0 {
				common_match = true;
			} else if global.cards_in_hand_opp[_i].rarity = 1 {
				uncommon_match = true;
			} else if global.cards_in_hand_opp[_i].rarity = 2 {
				rare_match = true;
			} else if global.cards_in_hand_opp[_i].rarity = 3 {
				mythic_match = true;
			} else if global.cards_in_hand_opp[_i].rarity = 4 {
				legendary_match = true;
			}
		}
	}
	
	if common_match = true && uncommon_match = true && rare_match = true && mythic_match = true && legendary_match = true {
		rarity_seq = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_ultimate_amphra);
		alarm[4] = 40;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		alarm[0] = 80;
	}
	
	
	wait_stack = false;
}