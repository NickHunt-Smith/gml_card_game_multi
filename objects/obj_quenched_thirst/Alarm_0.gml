/// @description Insert description here
// You can write your code in this editor

if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;