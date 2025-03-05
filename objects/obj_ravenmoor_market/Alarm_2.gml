/// @description Insert description here
// You can write your code in this editor

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
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
		alarm[1] = 10;
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
		alarm[1] = 10;
	}
}

