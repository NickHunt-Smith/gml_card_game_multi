
if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

targets = [];
if opp = false {
	if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		alarm[0] = 60;
	} else {
		if global.player_locale_1 != noone {
			if (global.player_locale_1.element = 3 && global.player_locale_1.rarity = 0 && global.player_locale_1.card_index = 1) or (global.player_locale_1.element = 3 && global.player_locale_1.rarity = 2 && global.player_locale_1.card_index = 0) or (global.player_locale_1.element = 3 && global.player_locale_1.rarity = 4 && global.player_locale_1.card_index = 0) {
				array_push(targets,global.player_locale_1);
			}
		}
		if global.player_locale_2 != noone {
			if (global.player_locale_2.element = 3 && global.player_locale_2.rarity = 0 && global.player_locale_2.card_index = 1) or (global.player_locale_2.element = 3 && global.player_locale_2.rarity = 2 && global.player_locale_2.card_index = 0) or (global.player_locale_2.element = 3 && global.player_locale_2.rarity = 4 && global.player_locale_2.card_index = 0) {
				array_push(targets,global.player_locale_2);
			}
		}
		if global.player_locale_3 != noone {
			if (global.player_locale_3.element = 3 && global.player_locale_3.rarity = 0 && global.player_locale_3.card_index = 1) or (global.player_locale_3.element = 3 && global.player_locale_3.rarity = 2 && global.player_locale_3.card_index = 0) or (global.player_locale_3.element = 3 && global.player_locale_3.rarity = 4 && global.player_locale_3.card_index = 0) {
				array_push(targets,global.player_locale_3);
			}
		}
		if global.player_locale_4 != noone {
			if (global.player_locale_4.element = 3 && global.player_locale_4.rarity = 0 && global.player_locale_4.card_index = 1) or (global.player_locale_4.element = 3 && global.player_locale_4.rarity = 2 && global.player_locale_4.card_index = 0) or (global.player_locale_4.element = 3 && global.player_locale_4.rarity = 4 && global.player_locale_4.card_index = 0) {
				array_push(targets,global.player_locale_4);
			}
		}
	}
} else {
	if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		alarm[0] = 60;
	} else {
		if global.opp_locale_1 != noone {
			if (global.opp_locale_1.element = 3 && global.opp_locale_1.rarity = 0 && global.opp_locale_1.card_index = 1) or (global.opp_locale_1.element = 3 && global.opp_locale_1.rarity = 2 && global.opp_locale_1.card_index = 0) or (global.opp_locale_1.element = 3 && global.opp_locale_1.rarity = 4 && global.opp_locale_1.card_index = 0) {
				array_push(targets,global.opp_locale_1);
			}
		}
		if global.opp_locale_2 != noone {
			if (global.opp_locale_2.element = 3 && global.opp_locale_2.rarity = 0 && global.opp_locale_2.card_index = 1) or (global.opp_locale_2.element = 3 && global.opp_locale_2.rarity = 2 && global.opp_locale_2.card_index = 0) or (global.opp_locale_2.element = 3 && global.opp_locale_2.rarity = 4 && global.opp_locale_2.card_index = 0) {
				array_push(targets,global.opp_locale_2);
			}
		}
		if global.opp_locale_3 != noone {
			if (global.opp_locale_3.element = 3 && global.opp_locale_3.rarity = 0 && global.opp_locale_3.card_index = 1) or (global.opp_locale_3.element = 3 && global.opp_locale_3.rarity = 2 && global.opp_locale_3.card_index = 0) or (global.opp_locale_3.element = 3 && global.opp_locale_3.rarity = 4 && global.opp_locale_3.card_index = 0) {
				array_push(targets,global.opp_locale_3);
			}
		}
		if global.opp_locale_4 != noone {
			if (global.opp_locale_4.element = 3 && global.opp_locale_4.rarity = 0 && global.opp_locale_4.card_index = 1) or (global.opp_locale_4.element = 3 && global.opp_locale_4.rarity = 2 && global.opp_locale_4.card_index = 0) or (global.opp_locale_4.element = 3 && global.opp_locale_4.rarity = 4 && global.opp_locale_4.card_index = 0) {
				array_push(targets,global.opp_locale_4);
			}
		}
	}
} 

if seq_no_target = noone {
	fortify_seqs = [];
	wave_seqs = [];
	for (var _i = 0; _i < array_length(targets); _i++) {
		array_push(wave_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+184,seq_wave));
		array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
		if targets[_i].frozen = true {
			targets[_i].memory_channel += flood_channel_boost;
		} else {
			targets[_i].channel += flood_channel_boost;
		}
		targets[_i].health_locale += flood_strength_boost;
	}
	alarm[5] = 90;
}