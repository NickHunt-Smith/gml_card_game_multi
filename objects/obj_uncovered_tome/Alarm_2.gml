/// @description Insert description here
// You can write your code in this editor

var more_cards = false;
if opp = false and array_length(global.cards_in_hand) > array_length(global.cards_in_hand_opp) {
	more_cards = true;
}
if opp = true and array_length(global.cards_in_hand_opp) > array_length(global.cards_in_hand) {
	more_cards = true;
}

if skip_target_1 = false && more_cards = true {
	spark = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_bonus_citrine_channel);
	scr_sequence_target(spark,target_1,opp,card_state);
	alarm[3] = 36;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

