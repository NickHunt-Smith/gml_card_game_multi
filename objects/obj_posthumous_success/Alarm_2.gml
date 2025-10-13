/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	bolts = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_bolts_on_card_self);
	alarm[3] = 80;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}