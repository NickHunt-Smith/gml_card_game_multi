
if playing = false {
	if (draft_mode = true) && (big_mode = false) && global.big_mode = false {
		if (moused = true) {
			draft_mode = false;
			array_push(global.cards_in_hand,self);
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