/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	spark = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_thunderbolt);
	scr_sequence_target(spark,target_1,opp,card_state);
	alarm[3] = 120;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[3] = 30;
}