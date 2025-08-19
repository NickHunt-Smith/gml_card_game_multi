/// @description Insert description here
// You can write your code in this editor

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
	
	memory_stack = global.spell_stack;
	
	if global.pvp_active = true && opp=false && global.resolve_stack = false && ignore_buffer = false{
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

if eff_type = "lingering" {
	if global.stack_active = true && stack_active = false {
		stack_active = true;
	}
	if global.stack_active = false && stack_active = true {
		stack_active = false;
		memory_stack = [];
	}
	
	for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
		if array_contains(memory_stack,global.spell_stack[_i]) = false {
			if (global.spell_stack[_i].opp = opp) && global.spell_stack[_i].element = 0 {
				fortify_seq = layer_sequence_create("effect_layer",x+112,y+230,seq_fortify)
				alarm[1] = 100;
				var seq_restore_change = scr_change_numbers(restore_amount,x+global.health_offset_x,y+328);
				card_state.health_locale += restore_amount;
			}
			array_push(memory_stack,global.spell_stack[_i]);
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