/// @description Insert description here
// You can write your code in this editor

if seq_restore_change != noone {
	layer_sequence_destroy(seq_restore_change);
}

if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
}

wait = false;
eff_done = true;