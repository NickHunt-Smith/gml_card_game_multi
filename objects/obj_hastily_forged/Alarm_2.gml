/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	spark = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_forge);
	alarm[3] = 12;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60
}

