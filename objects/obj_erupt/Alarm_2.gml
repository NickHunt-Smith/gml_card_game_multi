/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false && target_1.health_locale < global.rarity_list[target_1.rarity][target_1.element][target_1.card_type][2][target_1.card_index] {
	crumble = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_erupt);
	scr_sequence_target(crumble,target_1,opp,card_state);
	screenshake(120, 4, 0.1);
	alarm[1] = 220;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

