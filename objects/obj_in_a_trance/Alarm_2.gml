/// @description Regular effect

if skip_target_1 = false {
	locale_discard = noone;
	var max_rarity = 0;
	if opp = true {
		for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
			if global.cards_in_hand[_i].rarity >= max_rarity && global.cards_in_hand[_i].card_type[_i] = 0 {
				max_rarity = global.cards_in_hand[_i].rarity[_i];
				locale_discard = global.cards_in_hand[_i];
			}
		}
	} else {
		for (var _i = 0; _i < array_length(global.opponent.hand_rarity); _i++) {
			if global.opponent.hand_rarity[_i] >= max_rarity && global.opponent.hand_card_type[_i] = 0 {
				max_rarity = global.opponent.hand_rarity[_i];
				locale_discard = global.cards_in_hand_opp[_i];
			}
		}
	}
			
	if locale_discard != noone {
		discard_seq = layer_sequence_create("above_cards",locale_discard.x,locale_discard.y,seq_discard);
		alarm[1] = 20;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		alarm[0] = 80;
	}
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 80;
}