/// @description Regular effect

var targets_opp = [];
var targets_player = [];

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

if skip_target_1 = false {
	if opp = false {
		targets = targets_player
		fortify_seqs = [];
		seq_restore_change_2s = [];
		for (var _i = 0; _i < array_length(targets); _i++) {
			array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
			array_push(seq_restore_change_2s,scr_change_numbers(restore_amount,targets[_i].x+global.channel_offset_x,targets[_i].y+328));
			if targets[_i].frozen = true {
				targets[_i].memory_channel += restore_amount;
			} else {
				targets[_i].channel += restore_amount;
			}
		}
	} else {
		targets = targets_opp
		fortify_seqs = [];
		seq_restore_change_2s = [];
		for (var _i = 0; _i < array_length(targets); _i++) {
			array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
			array_push(seq_restore_change_2s,scr_change_numbers(restore_amount,targets[_i].x+global.channel_offset_x,targets[_i].y+328));
			if targets[_i].frozen = true {
				targets[_i].memory_channel += restore_amount;
			} else {
				targets[_i].channel += restore_amount;
			}
		}
	}
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
}

alarm[0] = 90;