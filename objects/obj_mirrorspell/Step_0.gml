/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else if opp = false {
		allowed_target_opp = false;
		sys_eff_instructions = part_system_create(Ps_eff_instructions);
		part_system_position(sys_eff_instructions, 1527,100);
		part_system_depth(sys_eff_instructions,-1100);
		draw_instructions_1 = true;
		
		arrow = instance_create_depth(card_state.x,card_state.y,-1100,obj_target_arrow);
		global.player_enabled = false;
		global.targeting_spell = true;
		wait = true;
		global.source_target = self;
	} else {
		if target_1 = noone {
			instance_destroy();
		} else {
			mirror = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_mirrorspell);
			alarm[1] = 20;
		}
	}
}

if wait_stack = true {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 50;
	wait_stack = false;
}

if (eff_type = "play") && (wait = true) && (wait_target = false) {
	
	if target != noone {
		target_1 = target;
		target = noone;
	}
	if target_1 != noone {
		
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
		
		draw_instructions_1 = false;
			
		if sys_eff_instructions != noone {
			part_emitter_destroy_all(sys_eff_instructions);
		}
		
		if target_1.position = "end_turn" {
			global.targeting = false;
			global.targeting_spell = false;
			//if global.priority = "player" && global.no_pass_prio = false {
			//	global.priority = "opp";
			//} else {
			//	global.no_pass_prio = false;
			//}
			global.player_enabled = true;
			wait_target = true;
		} else {
			
			mirror = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_mirrorspell);
			alarm[1] = 20;
			wait_target = true;
			
			//global.targeting = false;
			//global.targeting_spell = false;
			//array_delete(global.spell_stack,array_length(global.spell_stack)-1,1);
			//var copy = scr_play_spell(opp,target_1.rarity,target_1.element,target_1.card_index,target_1.target_1,target_1.target_2,target_1.target_3);
			//instance_destroy(card_state);
			//instance_destroy();
		}	
		
	}
}