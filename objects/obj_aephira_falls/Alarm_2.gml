/// @description Insert description here
// You can write your code in this editor

targets = [];
if opp = true {
	if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		alarm[1] = 60;
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
		alarm[1] = 60;
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
	rain_seqs = [];
	for (var _i = 0; _i < array_length(targets); _i++) {
		array_push(rain_seqs,layer_sequence_create("effect_layer",targets[_i].x + 112,targets[_i].y + 184,seq_rain));
	}
	alarm[3] = 70;
}
