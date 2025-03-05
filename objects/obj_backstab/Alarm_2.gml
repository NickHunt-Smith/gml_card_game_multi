/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	dark_strike = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_backstab);
	scr_sequence_target(dark_strike,target_1,opp,card_state);
	alarm[1] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

