/// @description Insert description here
// You can write your code in this editor

if instance_exists(channel_seq) {
	instance_destroy(channel_seq)
}

if instance_exists(seq_change_channel_1) {
	instance_destroy(seq_change_channel_1)
}

if instance_exists(seq_change_channel_2) {
	instance_destroy(seq_change_channel_2)
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;