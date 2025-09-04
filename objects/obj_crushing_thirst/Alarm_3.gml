/// @description Insert description here
// You can write your code in this editor

if skip_target = false and (target_1.rarity = 0 or target_1.rarity = 1) {
	seal = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_nullify_citrine);
	scr_sequence_target(seal,target_1,opp,card_state);

	alarm[1] = 30;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}