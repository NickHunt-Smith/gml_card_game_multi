/// @description Insert description here
// You can write your code in this editor

if channel_seq_1 != noone {
	layer_sequence_destroy(channel_seq_1);
	layer_sequence_destroy(seq_change_health_1);
	channel_seq_1 = noone;
	seq_change_health_1 = noone;
}

if channel_seq_2 != noone {
	layer_sequence_destroy(channel_seq_2);
	layer_sequence_destroy(seq_change_health_2);
	channel_seq_2 = noone;
	seq_change_health_2 = noone;
}

locked_boosting = false;