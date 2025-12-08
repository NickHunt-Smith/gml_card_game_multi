/// @description Insert description here
// You can write your code in this editor
if global.tutorial = false or global.tutorial_step = 25 or global.tutorial_step = 59 or global.tutorial_step = 67 or global.tutorial_step = 73 or global.tutorial_step = 95 or global.tutorial_step = 99 {
	if (global.player_enabled = true) && global.stack_active = false {
	
		if global.opponent.passed = true {
			global.player_enabled = false;
			global.wait_for_effect = false;
			global.opponent.passed = false;
			global.priority = "opp";
			global.phase = "combat";
			combat_phase_seq = layer_sequence_create("effect_layer",1522,754,seq_combat_phase);
			alarm[10] = 100; 
		} else {
			if global.tutorial = true {
				global.tutorial_step += 1;
				global.wait_for_tutorial_step = false;
			}
			global.player.passed = true;
			global.priority = "opp";
			global.player_enabled = false;
		}
	
		if global.pvp_active = true {
			var _b = buffer_create(1,buffer_grow,1)
			buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PASSED)
			var arbitrary_message = "hello"
			buffer_write(_b,buffer_string,arbitrary_message)
			steam_net_packet_send(global.other_id,_b)
			buffer_delete(_b)
		}
	
	}
	
	if global.targeting = true && global.big_mode = false {
		global.source_target.target = self;
	}

	if global.stack_active = true && global.resolve_stack = false && global.targeting = false && global.priority = "player" && global.player_enabled = true {
	
		if global.tutorial = true {
			global.tutorial_step += 1;
			global.wait_for_tutorial_step = false;
		}
		
		if global.pvp_active = true {
			var _b = buffer_create(1,buffer_grow,1)
			buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PASSED)
			var arbitrary_message = "hello"
			buffer_write(_b,buffer_string,arbitrary_message)
			steam_net_packet_send(global.other_id,_b)
			buffer_delete(_b)
		}
	
		global.player_enabled = false;
		if global.spell_stack[array_length(global.spell_stack)-1].opp = false {
			global.priority = "opp";
		} else {
			global.resolve_stack = true;
		}
	}
}