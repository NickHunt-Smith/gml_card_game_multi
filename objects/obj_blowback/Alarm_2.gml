/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	fireball_1 = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_blowback);
	alarm[1] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

