/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(drain_seqs); _i++) {
	layer_sequence_destroy(drain_seqs[_i]);
}
drain_seqs = [];

shield_seqs = [];
var was_drained = 0;
for (var _i = 0; _i < array_length(targets); _i++) {
	if targets[_i].shielded = true {
		array_push(shield_seqs,layer_sequence_create("effect_layer",targets[_i].x + 111,targets[_i].y + 184,seq_shield_break));
		targets[_i].shielded = false;
	} else {
		if opp = false {
			global.player.drained += drain_amount;
		} else {
			global.opponent.drained += drain_amount;
		}
		
		var seq_restore_change_1 = scr_change_numbers(-drain_amount,targets[_i].x+global.health_offset_x,targets[_i].y+328);
		targets[_i].health_locale -= drain_amount;
		was_drained += 1;
	}
}

fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
var seq_restore_change_2 = scr_change_numbers(was_drained*drain_amount,card_state.x+global.health_offset_x,card_state.y+328);
card_state.health_locale += was_drained*drain_amount;
alarm[0] = 100;