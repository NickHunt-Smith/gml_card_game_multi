/// @description Regular effect

if skip_target_1 = false {
	if global.drafting = false {

		if opp = false {
			wait = false;
			eff_done = true;
			
			if rarity_scry < 4 {
				rarity_scry += 1;
			}
			
			var draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
			draft_inst.draft_count = 1;
			draft_inst.switch_priority = false;
			draft_inst.rarity_locked = true;
			draft_inst.rarity_locked_i = rarity_scry;
			draft_inst.element_locked = true;
			draft_inst.element_locked_i = element_scry;
			draft_inst.card_type_locked = true;
			draft_inst.card_type_locked_i = card_type_scry;
		
			global.player_enabled = false;
		} else if opp = true {
			show_debug_message(hand_rarity)
			show_debug_message(hand_card_type)
			show_debug_message(global.opponent.hand_rarity)
			show_debug_message(global.opponent.hand_card_type)
			var missing_rarity = 0;
			var missing_card_type = 0;
			var found_missing = false;
			for (var _i = 0; _i < array_length(hand_rarity); _i++) {
				var found_missing_temp = true;
				for (var _j = 0; _j < array_length(global.opponent.hand_rarity); _j++) {
					if hand_rarity[_i] = global.opponent.hand_rarity[_j] and hand_card_type[_i] = global.opponent.hand_card_type[_j] {
						found_missing_temp = false;
						break
					}
				}
				
				if found_missing_temp = true {
					missing_rarity = hand_rarity[_i];
					missing_card_type = hand_card_type[_i];
					found_missing = true;
					break
				}
			}
			
			if found_missing = true {
				if missing_rarity < 4 {
					missing_rarity += 1;
				}
				array_push(global.opponent.hand_rarity,missing_rarity);
				array_push(global.opponent.hand_card_type,missing_card_type);
				wait = false;
				eff_done = true;
			} else {
				alarm[1] = 30;
			}
		}
	} else {
		alarm[1] = 30;
	}
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 80;
}