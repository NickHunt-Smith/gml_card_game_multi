/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") {
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
		
		// Deal 1 to random enemy locale
		x += 112;
		y += 184;
				
		while (target_1 = noone) {
			var temp = random(1000);
			if temp < 125 {
				target_1 = global.opp_locale_1;
			} else if (temp >= 125) && (temp < 250) {
				target_1 = global.opp_locale_2;
			} else if (temp >= 250) && (temp < 375) {
				target_1 = global.opp_locale_3;
			} else if (temp >= 375) && (temp < 500) {
				target_1 = global.opp_locale_4;
			} else if (temp >= 500) && (temp < 625) {
				target_1 = global.player_locale_1;
			} else if (temp >= 625) && (temp < 750) {
				target_1 = global.player_locale_2;
			} else if (temp >= 750) && (temp < 875) {
				target_1 = global.player_locale_3;
			} else if (temp >= 875) && (temp < 1000) {
				target_1 = global.player_locale_4;
			}
		}
		
		wait = true;
		alarm[2] = 100;
	}
}