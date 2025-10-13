/// @description Insert description here
// You can write your code in this editor

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
	channel_seq = noone;
}

if seq_change_health != noone {
	layer_sequence_destroy(seq_change_health);
	seq_change_health = noone;
}

spark = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184+130,seq_self_amphramute);

alarm[5] = 72;

