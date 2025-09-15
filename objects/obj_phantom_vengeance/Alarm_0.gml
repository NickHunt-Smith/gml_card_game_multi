/// @description Insert description here
// You can write your code in this editor

if seq_restore_change_1 != noone {
	layer_sequence_destroy(seq_restore_change_1);
	seq_restore_change_1 = noone;
}

if seq_restore_change_2 != noone {
	layer_sequence_destroy(seq_restore_change_2);
	seq_restore_change_2 = noone;
}

if fortify_seq_2 != noone {
	layer_sequence_destroy(fortify_seq_2);
	fortify_seq_2 = noone;
}

if fortify_seq_1 != noone {
	layer_sequence_destroy(fortify_seq_1);
	fortify_seq_1 = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

wait = false;
eff_done = true;