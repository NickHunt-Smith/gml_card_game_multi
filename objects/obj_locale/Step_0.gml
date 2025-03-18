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
	
	if (moused = false) && (obj_mouse_manager.grabbed_card = noone)
	{
		depth = -1000;
		image_xscale = lerp(image_xscale,0.5,0.3);
		image_yscale = lerp(image_yscale,0.5,0.3);
	}
	
	if (obj_mouse_manager.grabbed_card = noone) && (draft_mode = false) && overwriting = false && playing = false  {
		x = lerp(x, 1520 + 180*(order_in_hand) -90*(array_length(global.cards_in_hand) - 1), lerp_amount);
		y = lerp(y, y_hand, lerp_amount);
	}
}

if (obj_mouse_manager.grabbed_card = self) && (1000 < x) && (x < 1260) && (y<1200) && (locale_highlight_left = false) {
	global.locale_highlight_left = part_system_create(Ps_Locale_Highlight);
	part_system_position(global.locale_highlight_left, 1128, 490);
	part_system_depth(global.locale_highlight_left,-800);
	locale_highlight_left = true;
} else if (obj_mouse_manager.grabbed_card = self) && (1260 < x) && (x < 1522) && (y<1200) && (locale_highlight_left_middle = false) {
	global.locale_highlight_left_middle = part_system_create(Ps_Locale_Highlight);
	part_system_position(global.locale_highlight_left_middle, 1386, 490);
	part_system_depth(global.locale_highlight_left_middle,-800);
	locale_highlight_left_middle = true;
} else if (obj_mouse_manager.grabbed_card = self) && (1522 < x) && (x < 1784) && (y<1200) && (locale_highlight_right_middle = false) {
	global.locale_highlight_right_middle = part_system_create(Ps_Locale_Highlight);
	part_system_position(global.locale_highlight_right_middle, 1656, 490);
	part_system_depth(global.locale_highlight_right_middle,-800);
	locale_highlight_right_middle = true;
} else if (obj_mouse_manager.grabbed_card = self) && (1784 < x) && (x < 2050) && (y<1200) && (locale_highlight_right = false) {
	global.locale_highlight_right = part_system_create(Ps_Locale_Highlight);
	part_system_position(global.locale_highlight_right, 1918, 490);
	part_system_depth(global.locale_highlight_right,-800);
	locale_highlight_right = true;
}

if (locale_highlight_left = true) && ((1000 > x) or (x > 1260) or (y>1200)) && (obj_mouse_manager.grabbed_card = self) {
	part_system_destroy(global.locale_highlight_left);
	locale_highlight_left = false
}

if (locale_highlight_left_middle = true) && ((1260 > x) or (x > 1522) or (y>1200)) && (obj_mouse_manager.grabbed_card = self) {
	part_system_destroy(global.locale_highlight_left_middle);
	locale_highlight_left_middle = false
}

if (locale_highlight_right_middle = true) && ((1522 > x) or (x > 1784) or (y>1200)) && (obj_mouse_manager.grabbed_card = self) {
	part_system_destroy(global.locale_highlight_right_middle);
	locale_highlight_right_middle = false
}

if (locale_highlight_right = true) && ((1784 > x) or (x > 2050) or (y>1200)) && (obj_mouse_manager.grabbed_card = self) {
	part_system_destroy(global.locale_highlight_right);
	locale_highlight_right = false
}

image_alpha = lerp(image_alpha, 1, 0.02);