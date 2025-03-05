/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	fireball_1 = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_eye_of_the_firestorm);
	scr_sequence_target(fireball_1,target_1,opp,card_state);
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
}

alarm[1] = 20;