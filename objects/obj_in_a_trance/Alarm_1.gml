/// @description Regular effect

locale_discard.draw_card = false;
if opp = true {
	array_delete(global.cards_in_hand,locale_discard.order_in_hand,1);
}
alarm[0] = 65;