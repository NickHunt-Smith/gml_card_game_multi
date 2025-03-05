/// @description Insert description here
// You can write your code in this editor

if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

if skip_target = false {
	clash = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_clash);
	alarm[3] = 35;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}
