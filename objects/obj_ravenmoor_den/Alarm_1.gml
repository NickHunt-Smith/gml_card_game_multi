/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(fortify_seqs); _i++) {
	layer_sequence_destroy(fortify_seqs[_i]);
}

for (var _i = 0; _i < array_length(seq_restore_change_1s); _i++) {
	layer_sequence_destroy(seq_restore_change_1s[_i]);
}

for (var _i = 0; _i < array_length(seq_restore_change_2s); _i++) {
	layer_sequence_destroy(seq_restore_change_2s[_i]);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;