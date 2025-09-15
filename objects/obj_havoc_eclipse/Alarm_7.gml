/// @description Discard effect

descent = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_havoc);
alarm[8] = 140;

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
	channel_seq = noone;
}

if seq_change_channel_1 != noone {
	layer_sequence_destroy(seq_change_channel_1);
	seq_change_channel_1 = noone;
}

if seq_change_channel_2 != noone {
	layer_sequence_destroy(seq_change_channel_2);
	seq_change_channel_2 = noone;
}


