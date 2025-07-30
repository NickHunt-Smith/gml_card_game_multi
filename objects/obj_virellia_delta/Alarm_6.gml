
for (var _i = 0; _i < array_length(wave_seqs); _i++) {
	layer_sequence_destroy(wave_seqs[_i]);
}

for (var _i = 0; _i < array_length(fortify_seqs); _i++) {
	layer_sequence_destroy(fortify_seqs[_i]);
}

wait = false;
eff_done = true;