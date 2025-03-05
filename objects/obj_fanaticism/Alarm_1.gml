/// @description Insert description here
// You can write your code in this editor

if sacrifice != noone {
	layer_sequence_destroy(sacrifice);
	sacrifice = noone;
}
target_1.health_locale = 0;

if skip_target_2 = false {
	dark_strike = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_backstab);
	scr_sequence_target(dark_strike,target_2,opp,card_state);
	alarm[3] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}