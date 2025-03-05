/// @description Insert description here
// You can write your code in this editor

if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

if channel_up_seq != noone {
	layer_sequence_destroy(channel_up_seq);
	channel_up_seq = noone;
}