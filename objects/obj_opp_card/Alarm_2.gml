
if discard_seq != noone {
	layer_sequence_destroy(discard_seq);
	discard_seq = noone;
}

discard_eff = instance_create_depth(x,y,-800,global.rarity_list[rarity][element][1][2][card_index]);
discard_eff.eff_type = "discarded";
discard_eff.card_state = self;
discard_eff.opp = true;
discard_eff.rarity = rarity;
discard_eff.element = element;
discard_eff.card_index = card_index;

global.opponent.wait_for_opp = true;
global.player.passed = false;
global.opponent.passed = false;

array_delete(global.cards_in_hand_opp,order_in_hand,1);
array_delete(global.opponent.hand_rarity,order_in_hand,1);
array_delete(global.opponent.hand_card_type,order_in_hand,1);