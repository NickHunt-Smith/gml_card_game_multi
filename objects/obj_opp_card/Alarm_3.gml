
draw_card = false;
array_delete(global.cards_in_hand_opp,order_in_hand,1);
array_delete(global.opponent.hand_rarity,order_in_hand,1);
array_delete(global.opponent.hand_card_type,order_in_hand,1);
alarm[2] = 65;