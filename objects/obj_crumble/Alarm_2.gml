/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	crumble = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_crumble);
	scr_sequence_target(crumble,target_1,opp,card_state);
	alarm[3] = 175;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

