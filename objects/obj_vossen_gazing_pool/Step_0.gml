/// @description Insert description here
// You can write your code in this editor

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
	memory_stack = global.spell_stack;
	
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

if eff_type = "lingering" {
	//if global.pvp_active = true && opp = true {
	//	instance_destroy();
	//}
	
	if global.stack_active = true && stack_active = false {
		stack_active = true;
	}
	if global.stack_active = false && stack_active = true {
		stack_active = false;
		memory_stack = [];
	}
	if first_linger = true {
		if global.stack_active = true {
			stack_active = true;
		} else {
			stack_active = false;
		}
		for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
			array_push(memory_stack,global.spell_stack[_i]);
		}
		first_linger = false;
	}
	if opp = false {
		if lingering_active = false {
			if global.player_copying = true {
				lingering_active = false;
			} else {
				lingering_active = true;
				global.player_copying = true;
			}
		}
	} else {
		if lingering_active = false {
			if global.opp_copying = true {
				lingering_active = false;
			} else {
				lingering_active = true;
				global.opp_copying = true
			}
		}
	}
	
	for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
		if array_contains(memory_stack,global.spell_stack[_i]) = false {
			if (global.spell_stack[_i].opp = opp) && lingering_active = true {
				playing_spell = true;
				//var copy = scr_play_spell(opp,global.spell_stack[_i].rarity,global.spell_stack[_i].element,global.spell_stack[_i].card_index,global.spell_stack[_i].target_1,global.spell_stack[_i].target_2,global.spell_stack[_i].target_3);
				//array_push(memory_stack,copy);
				playing_spell_i = _i;
				//global.no_pass_prio = true;
			}
			array_push(memory_stack,global.spell_stack[_i]);
		}
	}
	if global.targeting = false && playing_spell = true {
		playing_spell = false;
		
		var copy = scr_play_spell(opp,global.spell_stack[playing_spell_i].rarity,global.spell_stack[playing_spell_i].element,global.spell_stack[playing_spell_i].card_index,global.spell_stack[playing_spell_i].target_1,global.spell_stack[playing_spell_i].target_2,global.spell_stack[playing_spell_i].target_3,false,true);
		if variable_instance_exists(global.spell_stack[playing_spell_i].effect_function_inst,"discard_variant") && global.spell_stack[playing_spell_i].effect_function_inst.discard_variant = true {
			copy.effect_function_inst.discard_variant = true;
		}
		array_push(memory_stack,copy);
		show_debug_message(global.spell_stack)
	}
}

if eff_type = "destroyed" && destroyed_eff_done = false {
	if opp = false {
		global.player_copying = false;
	} else {
		global.opp_copying = false;
	}
	destroyed_eff_done = true;
}

if eff_type = "transform" && destroyed_eff_done = false {
	if opp = false {
		global.player_copying = false;
	} else {
		global.opp_copying = false;
	}
	destroyed_eff_done = true;
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