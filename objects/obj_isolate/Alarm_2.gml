/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false && target_1.frozen = true {
	spark = layer_sequence_create("effect_layer",target_1.x,target_1.y,seq_big_crack);
	alarm[3] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

