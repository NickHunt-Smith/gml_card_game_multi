/// @description Insert description here
// You can write your code in this editor

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

alarm[1] = 10;