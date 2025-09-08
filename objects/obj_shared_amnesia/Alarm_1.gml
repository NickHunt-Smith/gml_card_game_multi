/// @description Regular effect

if skip_target_1 = false {
	seal = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_nullify_amethyst);
	scr_sequence_target(seal,target_2,opp,card_state);

	alarm[2] = 30;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 80;
}