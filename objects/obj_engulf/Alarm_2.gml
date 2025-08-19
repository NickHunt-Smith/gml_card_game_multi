/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	overgrow_seq = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_overgrow);
	scr_sequence_target(overgrow_seq,target_1,opp,card_state,true);
	alarm[1] = 40;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

