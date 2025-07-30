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
	
	if opp = true {
		target_1 = global.opp_locale_1;
		wave_seq = layer_sequence_create("effect_layer",1023+112,307+184,seq_wave);
	} else {
		target_1 = global.player_locale_1;
		wave_seq = layer_sequence_create("effect_layer",1023+112,844+184,seq_wave);
	}
	
	alarm[4] = 30;
	
	wait_stack = false;
}