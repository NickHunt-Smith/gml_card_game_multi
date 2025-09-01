/// @description Insert description here
// You can write your code in this editor

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
}

if skip_target = false {
	seal = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_nullify_pearl);
	scr_sequence_target(seal,target_1,opp,card_state);

	alarm[1] = 30;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}