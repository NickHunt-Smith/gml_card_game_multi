/// @description Insert description here
// You can write your code in this editor

if set_initial_params = true {
	initial_element = element; 
	initial_rarity = rarity;
	set_initial_params = false;
}

if just_played = true {
	if rarity = 0 {
		play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_common);
	} else if rarity = 1 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_ruby);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_pearl);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_onyx);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_sapphire);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_emerald);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_citrine);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_opal);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_uncommon_amethyst);
		}
	} else if rarity = 2 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_ruby);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_pearl);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_onyx);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_sapphire);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_emerald);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_citrine);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_opal);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_rare_amethyst);
		}
	} else if rarity = 3 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_ruby);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_pearl);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_onyx);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_sapphire);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_emerald);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_citrine);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_opal);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_mythic_amethyst);
		} 
		screenshake(10, 4, 0.4);
	} else if rarity = 4 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_ruby);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_pearl);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_onyx);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_sapphire);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_emerald);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_citrine);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_opal);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_play_legendary_amethyst);
		}
		screenshake(10, 4, 0.4);
	}
	//var copy_struct = layer_sequence_get_instance(play_seq);
	//play_seq.sequence.tracks[1].tracks[2].keyframes[0].channels[0].value = 0.5 + 0.01*random_range(0,100);
	//show_debug_message(copy_struct.sequence.tracks[1].tracks[2].keyframes[0].channels[0].value)
	just_played = false;
	if opp = false {
		global.player_playing_locale = true;
	} else {
		global.opp_playing_locale = true;
	}
	alarm[5] = 90;
}

if enable_player_after_effect = true {
	if instance_exists(effect_function_inst) = false {
		if global.priority = "player" {
			global.player_enabled = true;
		}
		enable_player_after_effect = false;
	}
}

//if channel < 1 && channelling = true {
//	part_system_destroy(channelled_sys);
//	channelling = false;
//}

//if (position = "left_player") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+180, y+450);
//	part_system_angle(channelled_sys,210+180)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "left_middle_player") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+45, y+450);
//	part_system_angle(channelled_sys,150+180)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "right_middle_player") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+180, y+450);
//	part_system_angle(channelled_sys,210+180)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "right_player") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+45, y+450);
//	part_system_angle(channelled_sys,150+180)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "left_opp") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+180, y-100);
//	part_system_angle(channelled_sys,150)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "left_middle_opp") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+45, y-100);
//	part_system_angle(channelled_sys,210)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "right_middle_opp") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+180, y-100);
//	part_system_angle(channelled_sys,150)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

//if (position = "right_opp") && (channelling = false) && (channel > 0) {
//	channelled_sys = part_system_create(global.channelling_sys[element])
//	part_system_position(channelled_sys, x+45, y-100);
//	part_system_angle(channelled_sys,210)
//	part_system_depth(channelled_sys,-800);
//	channelling = true;
//}

if (mouse_x > x) && (mouse_x < x + 240) && (mouse_y > y) && (mouse_y < y + 300) {
	moused = true;
} else {
	moused = false;
}

if (global.targeting = true) && (moused) && (highlighted = false) && (global.targeting_empty = false) && global.targeting_spell = false {
	if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
		target_highlight = part_system_create(Ps_Locale_Highlight_small);
		part_system_position(target_highlight,x + 112,y + 184);
		part_system_depth(target_highlight,-800);
		highlighted = true;
	}
} 

if (global.targeting = true) && (!moused) && (highlighted = true) {
	if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
		part_system_destroy(target_highlight);
		highlighted = false;
	}
}

if health_memory != health_locale {
	if health_memory = 0 or health_memory < health_locale or health_locale = 0 {
		health_memory = health_locale;
	} else {
		was_damaged = true;
		health_memory = health_locale;
		crack_sys = layer_sequence_create("effect_layer",x+112,y+184,seq_cracking);
		alarm[1] = 90;
	}
}

if (health_locale <= 0) && (destroy_dust = false) {
	
	if overwritten = true {
		if overwriting = false {
			alarm[6] = 30;
			overwrite_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_overwrite);
			instance_destroy(self.effect_function_inst);
			if tooltip_inst != noone {
				instance_destroy(tooltip_inst);
			}
			instance_destroy(lingering_effect_function_inst);
			overwriting = true;
			if illusory_sys != noone {
				part_system_destroy(illusory_sys);
				illusory_sys = noone;
			}
		}
	} else {
		if opp = false {
			array_push(global.player.destroyed_locales_rarity,rarity);
			array_push(global.player.destroyed_locales_element,element);
			array_push(global.player.destroyed_locales_card_index,card_index);
		} else {
			array_push(global.opponent.destroyed_locales_rarity,rarity);
			array_push(global.opponent.destroyed_locales_element,element);
			array_push(global.opponent.destroyed_locales_card_index,card_index);
		}
		
		if illusory_sys != noone {
			destroy_sys = layer_sequence_create("effect_layer",x+112,y+184,seq_locale_destroyed);
			part_system_destroy(illusory_sys);
			alarm[3] = 90;
			illusory_sys = noone;
			if frozen = true {
				frozen = false;
				channel = memory_channel;
			}
			health_locale = 1;
			destroyed_eff = instance_create_depth(x,y,-800,effect_function);
			destroyed_eff.eff_type = "destroyed";
			destroyed_eff.card_state = self;
			destroyed_eff.opp = opp;
		} else {
			destroy_sys = layer_sequence_create("effect_layer",x+112,y+184,seq_locale_destroyed);
			screenshake(10, 4, 0.4);
			alarm[0] = 90;
			destroy_dust = true;
			destroyed = true;
			array_push(global.being_destroyed,0);
			instance_destroy(self.effect_function_inst);
			//if global.end_turn_active = true {
			//	global.end_turn_active = false;
			//	enable_end_turn_later = true;
			//}
			if tooltip_inst != noone {
				instance_destroy(tooltip_inst);
			}
			instance_destroy(lingering_effect_function_inst);
	
			destroyed_eff = instance_create_depth(x,y,-800,effect_function);
			destroyed_eff.eff_type = "destroyed";
			destroyed_eff.card_state = self;
			destroyed_eff.opp = opp;
		}
	}
}

if frozen_memory = false && frozen = true {
	frozen_memory = true;
}
if frozen_memory = true && frozen = false {
	frozen_memory = false;
	unfreeze = layer_sequence_create("effect_layer",x+112,y+184,seq_unfreeze);
	alarm[4] = 45;
}