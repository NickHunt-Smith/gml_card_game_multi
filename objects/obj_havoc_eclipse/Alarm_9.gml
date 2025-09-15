/// @description Discard effect

if descent != noone {
	layer_sequence_destroy(descent);
	descent = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

wait = false;
eff_done = true;