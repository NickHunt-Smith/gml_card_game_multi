if global.tutorial = true && global.tutorial_step != 46 {
	if (draft_mode = true)  {
		if big_mode = true {
			alarm[5] = 1;
			big_mode = false;
			x = x_start;
			y = y_start;
		}
		//image_xscale = 0.5;
		//image_yscale = 0.5;
		//depth = -1000;
	} else {
		if big_mode = true {
			alarm[5] = 1;
			big_mode = false;
			if global.drafting = false && global.targeting = false && enable_player_after_big_mode = true {
				global.player_enabled = true;
				enable_player_after_big_mode = false;
			}
		}
		//x = lerp(x, 1520 + 180*(order_in_hand) -90*(array_length(global.cards_in_hand) - 1), lerp_amount);
		////y = y_hand_unhover;
		////image_xscale = 0.5;
		////image_yscale = 0.5;
		//depth = -1000;
	}
}

if global.tutorial = false or global.tutorial_step = 47 or global.tutorial_step = 50 or global.tutorial_step = 56 or global.tutorial_step = 82 or global.tutorial_step = 88 or global.tutorial_step = 89 or global.tutorial_step = 91{
	if playing = false && global.targeting_hand = false {
		if (draft_mode = true) && (big_mode = false) && global.big_mode = false {
			if (moused = true) {
				if global.tutorial = false {
					draft_mode = false;
					array_push(global.cards_in_hand,self);
				} else {
					if global.tutorial_step = 50 or global.tutorial_step = 82 or global.tutorial_step = 88 {
						global.tutorial_step += 1;
						global.wait_for_tutorial_step = false;
						draft_mode = false;
						array_push(global.cards_in_hand,self);
					}
				}
			}
		} else if (big_mode = false) && (moused = true) && (global.player_enabled = true) {
			obj_mouse_manager.grabbed_card = self;
		} else if (draft_mode = true) {
			if big_mode = true {
				global.big_mode = false;
				big_mode = false;
			}
			x = x_start;
			y = y_start;
			image_xscale = 0.5;
			image_yscale = 0.5;
			depth = -1000;
		} else {
			if big_mode = true {
				global.big_mode = false;
				big_mode = false;
				if global.drafting = false && global.targeting = false && enable_player_after_big_mode = true {
					global.player_enabled = true;
					enable_player_after_big_mode = false;
				}
			}
			x = lerp(x, 1520 + 180*(order_in_hand) -90*(array_length(global.cards_in_hand) - 1), lerp_amount);
			//y = y_hand_unhover;
			//image_xscale = 0.5;
			//image_yscale = 0.5;
			depth = -1000;
		}
	}

	if global.targeting_hand = true && moused = true && global.big_mode = false && discarding = false {
		if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
			global.source_target.target = self;
		}
	
		discarding = true;
		if global.source_target.card_state.element = 7 {
			discard_seq = layer_sequence_create("above_cards",x,y,seq_discard);
		} else if global.source_target.card_state.element = 6 {
			discard_seq = layer_sequence_create("above_cards",x,y,seq_discard_opal);
		}
		alarm[3] = 20;
	}
}