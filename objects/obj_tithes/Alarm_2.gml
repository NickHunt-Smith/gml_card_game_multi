/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false && skip_target_2 = false {
	drain_seq = layer_sequence_create("effect_layer",target_2.x + 112,target_2.y + 184,seq_coins);
	scr_sequence_target(drain_seq,target_1,opp,target_2);
	alarm[3] = 120;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}