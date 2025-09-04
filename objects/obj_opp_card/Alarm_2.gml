
if discard_seq != noone {
	layer_sequence_destroy(discard_seq);
	discard_seq = noone;
}

discard_eff = instance_create_depth(x,y,-800,effect_function);
discard_eff.eff_type = "discarded";
discard_eff.card_state = self;
discard_eff.opp = opp;
discard_eff.rarity = rarity;
discard_eff.element = element;
discard_eff.card_index = card_index;

global.opponent.wait_for_opp = true;
global.player.passed = false;
global.opponent.passed = false;
show_debug_message("hello")

instance_destroy();