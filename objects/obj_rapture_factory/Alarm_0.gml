/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

show_debug_message(global.cards_in_hand)

if (opp = true && array_length(global.cards_in_hand_opp) = 0) or (opp = false && array_length(global.cards_in_hand) = 0) {

	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	var seq_restore_change_1 = scr_change_numbers(restore_amount,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += restore_amount;

	var seq_restore_change_2 = scr_change_numbers(restore_amount,card_state.x+global.channel_offset_x,card_state.y+328);
	if card_state.frozen = true {
		card_state.memory_channel += restore_amount;
	} else {
		card_state.channel += restore_amount;
	}
	alarm[1] = 100;
} else {
	alarm[1] = 1;
}