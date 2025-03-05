/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	drain_seq = layer_sequence_create("effect_layer",x,y,seq_drain);
	scr_sequence_target(drain_seq,target_1,opp,card_state);
	alarm[2] = 100;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[1] = 60;
}