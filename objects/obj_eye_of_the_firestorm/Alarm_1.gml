/// @description Insert description here
// You can write your code in this editor

if skip_target_2 = false {
	fireball_2 = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_eye_of_the_firestorm);
	scr_sequence_target(fireball_2,target_2,opp,card_state);
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
}

alarm[3] = 80;