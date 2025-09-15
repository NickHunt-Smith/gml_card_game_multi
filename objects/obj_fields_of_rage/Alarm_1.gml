/// @description Insert description here
// You can write your code in this editor

if target_1 != noone {
	clash = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_clash);
	alarm[4] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
	alarm[0] = 60;
}

