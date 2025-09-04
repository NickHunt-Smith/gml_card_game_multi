
if playing = false && global.targeting_hand = false {
	if (draft_mode = true) && (big_mode = false) && global.big_mode = false {
		if (moused = true) {
			draft_mode = false;
			array_push(global.cards_in_hand,self);
			//if created_eff != noone {
			//	instance_destroy(created_eff);
			//}
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
	discard_seq = layer_sequence_create("above_cards",x,y,seq_discard);
	alarm[3] = 20;
}