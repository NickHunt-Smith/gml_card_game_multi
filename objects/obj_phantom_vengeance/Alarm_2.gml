/// @description Insert description here
// You can write your code in this editor

if skip_target = false {
	clash = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_clash);
	alarm[4] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}
