spell_discard.draw_card = false;
if opp = true {
	array_delete(global.cards_in_hand,spell_discard.order_in_hand,1);
}
alarm[2] = 65;