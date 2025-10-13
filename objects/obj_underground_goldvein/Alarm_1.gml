
if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

if channel_up_seq != noone {
	layer_sequence_destroy(channel_up_seq);
	channel_up_seq = noone;
}

if seq_restore_change_1 != noone {
	layer_sequence_destroy(seq_restore_change_1);
	seq_restore_change_1 = noone;
}