/// @description Check if the cursor is over us.
// If the cursor is over us
if (big_mode = false) {
	if (collision_point(mouse_x,mouse_y,self,false,false))
	{
	
		if (array_length(global.cards_in_hand) = 0) {
			moused = true;
			image_xscale = lerp(image_xscale,image_scale_hovered,0.3);
			image_yscale = lerp(image_yscale,image_scale_hovered,0.3);
		} else if (obj_mouse_manager.grabbed_card = noone) {
		
			var moused_set = true;
			for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
				if _i != order_in_hand {
					var distance_to_this = abs(mouse_x - x);
					var distance_to_that = abs(mouse_x - global.cards_in_hand[_i].x);
					if (distance_to_this > distance_to_that) {
						moused_set = false;
					} 
				}
			}
			if moused_set = false {
				moused = false;
			} else {
				depth = -1001;
				moused = true;
				image_xscale = lerp(image_xscale,image_scale_hovered,0.3);
				image_yscale = lerp(image_yscale,image_scale_hovered,0.3);
			}
		} 
	} else {
		moused = false;
	}
	
	if (moused = false) && (obj_mouse_manager.grabbed_card = noone) && playing = false
	{
	depth = -1000;
	image_xscale = lerp(image_xscale,image_scale_unhovered,0.3);
	image_yscale = lerp(image_yscale,image_scale_unhovered,0.3);
	}
	
	if (obj_mouse_manager.grabbed_card = noone) && (draft_mode = false) && playing = false {
		x = lerp(x, 1520 + 180*(order_in_hand) -90*(array_length(global.cards_in_hand) - 1), lerp_amount);
		if mouse_y > 1400 {
			if moused = true {
				y = lerp(y,y_hand_hover_big,lerp_amount);
			} else {
				y = lerp(y,y_hand_hover_small,lerp_amount);
			}
		} else {
			y = lerp(y,y_hand_unhover,lerp_amount);
		}
	}
}

image_alpha = lerp(image_alpha, 1, 0.04);

if global.big_mode = false && discarding = true && discard_seq = noone {
	if global.source_target.card_state.element = 7 {
		discard_seq = layer_sequence_create("above_cards",x,y,seq_discard);
	} else if global.source_target.card_state.element = 6 {
		discard_seq = layer_sequence_create("above_cards",x,y,seq_discard_opal);
	}
	alarm[3] = 20;
}