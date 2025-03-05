/// @description Insert description here
// You can write your code in this editor

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
			alarm[0] = 90;
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
			if global.end_turn_active = true {
				global.end_turn_active = false;
				enable_end_turn_later = true;
			}
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