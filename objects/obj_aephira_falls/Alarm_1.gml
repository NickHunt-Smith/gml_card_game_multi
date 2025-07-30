/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(rain_seqs); _i++) {
	layer_sequence_destroy(rain_seqs[_i]);
}

for (var _i = 0; _i < array_length(change_health_seqs); _i++) {
	layer_sequence_destroy(change_health_seqs[_i]);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}