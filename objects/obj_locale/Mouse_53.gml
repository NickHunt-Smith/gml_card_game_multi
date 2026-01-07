
if global.tutorial = true && global.tutorial_step != 3 && global.tutorial_step != 4 && global.tutorial_step != 5 && global.tutorial_step != 6 && global.tutorial_step != 7 && global.tutorial_step != 8 && global.tutorial_step != 9 {
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

if global.tutorial = false or global.tutorial_step = 9 or global.tutorial_step = 11 or global.tutorial_step = 14 or global.tutorial_step = 53 or global.tutorial_step = 70 or global.tutorial_step = 83 {
	
	if playing = false && global.targeting_hand = false {
		if (draft_mode = true) && (big_mode = false) && global.big_mode = false {
			if (moused = true) {
				if global.tutorial = false {
					draft_mode = false;
					image_scale_hovered = 1;
					array_push(global.cards_in_hand,self);
				} else {
					if global.tutorial_step = 11 or global.tutorial_step = 53 or global.tutorial_step = 83 {
						global.tutorial_step += 1;
						global.wait_for_tutorial_step = false;
						image_scale_hovered = 1;
						draft_mode = false;
						array_push(global.cards_in_hand,self);
					}
				}
			}
		} else if (big_mode = false) && (moused = true) && (global.player_enabled = true) && global.stack_active = false {
			obj_mouse_manager.grabbed_card = self;
		} else if (draft_mode = true)  {
			if big_mode = true {
				global.big_mode = false;
				big_mode = false;
			}
			x = x_start;
			y = y_start;
			image_xscale = image_scale_unhovered;
			image_yscale = image_scale_unhovered;
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
	
	if global.targeting_hand = true && moused = true && global.big_mode = false {
		if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
			global.source_target.target = self;
		}
	}
}