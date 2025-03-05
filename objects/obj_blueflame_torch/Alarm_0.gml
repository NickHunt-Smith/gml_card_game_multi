/// @description Insert description here
// You can write your code in this editor

if fortify_seq_1 != noone {
	layer_sequence_destroy(fortify_seq_1);
	layer_sequence_destroy(seq_restore_change_1);
}

if fortify_seq_2 != noone {
	layer_sequence_destroy(fortify_seq_2);
	layer_sequence_destroy(seq_restore_change_2);
}

if fortify_seq_3 != noone {
	layer_sequence_destroy(fortify_seq_3);
	layer_sequence_destroy(seq_restore_change_3);
}

if fortify_seq_4 != noone {
	layer_sequence_destroy(fortify_seq_4);
	layer_sequence_destroy(seq_restore_change_4);
}

if blueflame != noone {
	layer_sequence_destroy(blueflame);
}

wait = false;
eff_done = true;