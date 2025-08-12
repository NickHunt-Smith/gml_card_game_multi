/// @description Insert description here
// You can write your code in this editor

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}

if fortify_seq_1 != noone {
	layer_sequence_destroy(fortify_seq_1);
	fortify_seq_1 = noone;
}

if fortify_seq_2 != noone {
	layer_sequence_destroy(fortify_seq_2);
	fortify_seq_2 = noone;
}

wait = false;
eff_done = true;