/// @description Insert description here
// You can write your code in this editor

if channel_up_seq != noone {
	layer_sequence_destroy(channel_up_seq);
	channel_up_seq = noone;
}

if seq_restore_change != noone {
	layer_sequence_destroy(seq_restore_change);
	seq_restore_change = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;