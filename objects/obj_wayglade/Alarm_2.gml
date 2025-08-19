/// @description Insert description here
// You can write your code in this editor

var targets_opp = [];
var targets_player = [];

if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[1] = 60;
} else {
	if global.opp_locale_1 != noone {
		array_push(targets_opp,global.opp_locale_1);
	}
	if global.opp_locale_2 != noone {
		array_push(targets_opp,global.opp_locale_2);
	}
	if global.opp_locale_3 != noone {
		array_push(targets_opp,global.opp_locale_3);
	}
	if global.opp_locale_4 != noone {
		array_push(targets_opp,global.opp_locale_4);
	}
	if global.player_locale_1 != noone {
		array_push(targets_player,global.player_locale_1);
	}
	if global.player_locale_2 != noone {
		array_push(targets_player,global.player_locale_2);
	}
	if global.player_locale_3 != noone {
		array_push(targets_player,global.player_locale_3);
	}
	if global.player_locale_4 != noone {
		array_push(targets_player,global.player_locale_4);
	}
}

if opp = false {
	if array_length(targets_opp) >= array_length(targets_player) {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		alarm[1] = 60;
	} else {
		targets = targets_player
		fortify_seqs = [];
		seq_restore_change_1s = [];
		seq_restore_change_2s = [];
		for (var _i = 0; _i < array_length(targets); _i++) {
			array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
			array_push(seq_restore_change_1s,scr_change_numbers(restore_amount,targets[_i].x+global.health_offset_x,targets[_i].y+328));
			array_push(seq_restore_change_2s,scr_change_numbers(restore_amount,targets[_i].x+global.channel_offset_x,targets[_i].y+328));
			if targets[_i].frozen = true {
				targets[_i].memory_channel += restore_amount;
			} else {
				targets[_i].channel += restore_amount;
			}
			targets[_i].health_locale += restore_amount;
		}
		alarm[1] = 90;
	}
} else {
	if array_length(targets_player) >= array_length(targets_opp) {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		alarm[1] = 60;
	} else {
		targets = targets_opp
		fortify_seqs = [];
		seq_restore_change_1s = [];
		seq_restore_change_2s = []; 
		for (var _i = 0; _i < array_length(targets); _i++) {
			if targets[_i].position != card_state.position {
				array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
				array_push(seq_restore_change_1s,scr_change_numbers(restore_amount,targets[_i].x+global.health_offset_x,targets[_i].y+328));
				array_push(seq_restore_change_2s,scr_change_numbers(restore_amount,targets[_i].x+global.channel_offset_x,targets[_i].y+328));
				if targets[_i].frozen = true {
					targets[_i].memory_channel += restore_amount;
				} else {
					targets[_i].channel += restore_amount;
				}
				targets[_i].health_locale += restore_amount;
			}
		}
		alarm[1] = 90;
	}
}