
if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if waves_seq != noone {
	layer_sequence_destroy(waves_seq);
}

targets = [];
if opp = true {
	if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		alarm[0] = 60;
	} else {
		if global.player_locale_1 != noone {
			array_push(targets,global.player_locale_1);
		}
		if global.player_locale_2 != noone {
			array_push(targets,global.player_locale_2);
		}
		if global.player_locale_3 != noone {
			array_push(targets,global.player_locale_3);
		}
		if global.player_locale_4 != noone {
			array_push(targets,global.player_locale_4);
		}
	}
} else {
	if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		alarm[0] = 60;
	} else {
		if global.opp_locale_1 != noone {
			array_push(targets,global.opp_locale_1);
		}
		if global.opp_locale_2 != noone {
			array_push(targets,global.opp_locale_2);
		}
		if global.opp_locale_3 != noone {
			array_push(targets,global.opp_locale_3);
		}
		if global.opp_locale_4 != noone {
			array_push(targets,global.opp_locale_4);
		}
	}
} 

if seq_no_target = noone {
	shield_seqs = [];
	for (var _i = 0; _i < array_length(targets); _i++) {
		if targets[_i].shielded = true {
			array_push(shield_seqs,layer_sequence_create("effect_layer",targets[_i].x + 111,targets[_i].y + 184,seq_shield_break));
			targets[_i].shielded = false;
		} else {
			var seq_restore_change_1 = scr_change_numbers(wave_damage,targets[_i].x+global.health_offset_x,targets[_i].y+328);
			targets[_i].health_locale += wave_damage; 
		}
	}
	alarm[0] = 60;
}