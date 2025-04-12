/// @description Check if the cursor is over us.
// If the cursor is over us
if (big_mode = false) {
	if (collision_point(mouse_x,mouse_y,self,false,false))
	{
	
		if (array_length(global.cards_in_hand) = 0) {
			moused = true;
			image_xscale = lerp(image_xscale,1,0.3);
			image_yscale = lerp(image_yscale,1,0.3);
		} else if (obj_mouse_manager.grabbed_card = noone) {
		
			var moused_set = true;
			for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
				if _i = order_in_hand {
					if (array_length(global.cards_in_hand) = 1) {
						depth = -1001;
						moused = true;
						image_xscale = lerp(image_xscale,1,0.3);
						image_yscale = lerp(image_yscale,1,0.3);
					}
					continue
				} else {
					var distance_to_this = sqrt(sqr(mouse_x - x) + sqr(mouse_y - y));
					var distance_to_that = sqrt(sqr(mouse_x - global.cards_in_hand[_i].x) + sqr(mouse_y - global.cards_in_hand[_i].y));
					if (distance_to_this > distance_to_that) {
						moused_set = false;
					} else {
						depth = -1001;
						moused = true;
						image_xscale = lerp(image_xscale,1,0.3);
						image_yscale = lerp(image_yscale,1,0.3);
					}
				}
			}
			if moused_set = false {
				moused = false;
			}
		} 
	} else {
		moused = false;
	}
	
	if (moused = false) && (obj_mouse_manager.grabbed_card = noone) && playing = false
	{
	depth = -1000;
	image_xscale = lerp(image_xscale,0.5,0.3);
	image_yscale = lerp(image_yscale,0.5,0.3);
	}
	
	if (obj_mouse_manager.grabbed_card = noone) && (draft_mode = false) && playing = false {
		x = lerp(x, 1520 + 180*(order_in_hand) -90*(array_length(global.cards_in_hand) - 1), lerp_amount);
		if mouse_y > 1400 {
			y = lerp(y,y_hand_hover,lerp_amount);
		} else {
			y = lerp(y,y_hand_unhover,lerp_amount);
		}
	}
}

image_alpha = lerp(image_alpha, 1, 0.04);