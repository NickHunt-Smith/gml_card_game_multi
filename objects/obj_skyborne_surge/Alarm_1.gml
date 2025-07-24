
if wave_seq != noone {
	layer_sequence_destroy(wave_seq);
	wave_seq = noone;
}

if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if target_empty != noone {
	instance_destroy(target_empty);
	target_empty = noone;
}

wait = false;
eff_done = true;