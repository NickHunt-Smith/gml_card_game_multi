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
			alarm[1] = 40; 
			
			wait = true;
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