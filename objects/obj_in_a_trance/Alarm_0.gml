/// @description Regular effect

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

if discard_seq != noone {
	layer_sequence_destroy(discard_seq);
	discard_seq = noone;
}

if skip_target_1 = false && locale_discard != noone {
	if opp = true {
		global.player.discards += 1;
		instance_destroy(locale_discard);
	} else {
		global.opponent.discards += 1;
		array_delete(global.opponent.hand_rarity,locale_discard.order_in_hand,1);
		array_delete(global.opponent.hand_card_type,locale_discard.order_in_hand,1);
	}
}

wait = false;
eff_done = true;
