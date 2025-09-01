/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false && card_state.order_in_stack  >= 5 {
	spark = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_bonus_ruby_channel);
	scr_sequence_target(spark,target_1,opp,card_state);
	alarm[3] = 36;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

