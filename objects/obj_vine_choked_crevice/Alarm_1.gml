for (var _i = 0; _i < array_length(fortify_seqs); _i++) {
	layer_sequence_destroy(fortify_seqs[_i]);
}

for (var _i = 0; _i < array_length(seq_restore_change_1s); _i++) {
	layer_sequence_destroy(seq_restore_change_1s[_i]);
}

for (var _i = 0; _i < array_length(seq_restore_change_2s); _i++) {
	layer_sequence_destroy(seq_restore_change_2s[_i]);
}

array_delete(global.destroy_effects,0,1);

instance_destroy();