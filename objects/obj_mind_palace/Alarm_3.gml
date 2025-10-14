
if created != noone {
	layer_sequence_destroy(created);
	created = noone;
}

if opp = false {
	var card_inst = scr_scry_card(rarity_scry,element_scry,card_type_scry,card_index,1,noone);
	card_inst.draft_mode = false;
	card_inst.x = card_state.x;
	card_inst.y = card_state.y;
	card_inst.image_alpha = 1;
	array_push(global.cards_in_hand,card_inst);

	if array_length(global.cards_in_hand) < array_length(global.cards_in_hand_opp) {
		alarm[4] = 5;
	} else {
		alarm[0] = 5;
	}
} else {
	if array_length(global.cards_in_hand_opp) < array_length(global.cards_in_hand) {
		alarm[4] = 5;
	} else {
		alarm[0] = 5;
	}
}