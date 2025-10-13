
if created != noone {
	layer_sequence_destroy(created);
	created = noone;
}

var card_inst = scr_scry_card(rarity_scry,element_scry,card_type_scry,card_index_scry,1,noone);
card_inst.draft_mode = false;
card_inst.x = card_state.x+112;
card_inst.y = card_state.y+184;
card_inst.image_alpha = 1;
array_push(global.cards_in_hand,card_inst);

eff_done = true;
wait = false;