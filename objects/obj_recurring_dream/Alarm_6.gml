/// @description Discard effect

if skip_target_1 = false {
	if global.drafting = false {

		wait = false;
		eff_done = true;

		if opp = false {
			var draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
			draft_inst.draft_count = 1;
			draft_inst.switch_priority = false;
			draft_inst.rarity_locked = true;
			draft_inst.rarity_locked_i = rarity_scry - 1;
			draft_inst.element_locked = true;
			draft_inst.element_locked_i = element_scry;
			draft_inst.card_type_locked = true;
			draft_inst.card_type_locked_i = card_type_scry;
		
			global.player_enabled = false;
		} else if opp = true {
			array_push(global.opponent.hand_rarity,rarity_scry);
			array_push(global.opponent.hand_card_type,card_type_scry);
		}
	} else {
		alarm[6] = 50;
	}
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[7] = 80;
}