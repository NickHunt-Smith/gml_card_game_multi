/// @description Insert description here
// You can write your code in this editor

if target_1 != noone {
	rain = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_rain);
	alarm[3] = 70;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}