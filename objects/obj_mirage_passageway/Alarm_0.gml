/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

var more_cards = false;
if opp = false and array_length(global.cards_in_hand) > array_length(global.cards_in_hand_opp) {
	more_cards = true;
}
if opp = true and array_length(global.cards_in_hand_opp) > array_length(global.cards_in_hand) {
	more_cards = true;
}

if more_cards = true {
	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	seq_restore_change_1 = scr_change_numbers(strength_boost,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += strength_boost; 
	
	seq_restore_change_2 = scr_change_numbers(channel_boost,card_state.x+global.channel_offset_x,card_state.y+328);
	if card_state.frozen = true {
		card_state.memory_channel += channel_boost;
	} else {
		card_state.channel += channel_boost;
	}
	alarm[1] = 100;
} else {
	alarm[1] = 1;
}

