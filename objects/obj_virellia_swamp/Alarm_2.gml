
if discard_seq != noone {
	layer_sequence_destroy(discard_seq);
	discard_seq = noone;
}

if opp = true {
	global.player.discards += 1;
	spell_discard.discarding = true;
	instance_destroy(spell_discard);
} else {
	global.opponent.discards += 1;
	array_delete(global.opponent.hand_rarity,spell_discard.order_in_hand,1);
	array_delete(global.opponent.hand_card_type,spell_discard.order_in_hand,1);
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}