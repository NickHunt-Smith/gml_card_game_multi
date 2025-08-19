
for (var _i = 0; _i < array_length(roots); _i++) {
	layer_sequence_destroy(roots[_i]);
}
roots = [];

for (var _i = 0; _i < array_length(fortify_seqs); _i++) {
	layer_sequence_destroy(fortify_seqs[_i]);
}
fortify_seqs = [];

for (var _i = 0; _i < array_length(seq_restore_change_1s); _i++) {
	layer_sequence_destroy(seq_restore_change_1s[_i]);
}
seq_restore_change_1s = [];

for (var _i = 0; _i < array_length(seq_restore_change_2s); _i++) {
	layer_sequence_destroy(seq_restore_change_2s[_i]);
}
seq_restore_change_2s = [];

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}