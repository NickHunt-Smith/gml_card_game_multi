/// @description If in play area, play card
// You can write your code in this editor

if (global.player_enabled = true) {

	if (obj_mouse_manager.grabbed_card = self) && overwriting = false {
		
		if (y < 1200) && (1000 < x) && (x < 1250) {
			if global.player_locale_1 = noone {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_left);
				locale_lane_x = 1018;
				alarm[0] = 65;
				playing = true;
			} else {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_left);
				locale_lane_x = 1018;
				alarm[0] = 65;
				overwriting = true;
				playing = true;
				global.player_locale_1.overwritten = true;
				global.player_locale_1.health_locale = 0;
			}
		} else if (y < 1200) && (1250 < x) && (x < 1522) {
			if global.player_locale_2 = noone {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_left_middle);
				locale_lane_x = 1283;
				alarm[0] = 65;
				playing = true;
			} else {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_left_middle);
				locale_lane_x = 1283;
				alarm[0] = 65;
				overwriting = true;
				playing = true;
				global.player_locale_2.overwritten = true;
				global.player_locale_2.health_locale = 0;
			}
		} else if (y < 1200) && (1522 < x) && (x < 1784) {
			if global.player_locale_3 = noone {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_right_middle);
				locale_lane_x = 1545;
				alarm[0] = 65;
				playing = true;
			} else {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_right_middle);
				locale_lane_x = 1545;
				alarm[0] = 65;
				overwriting = true;
				playing = true;
				global.player_locale_3.overwritten = true;
				global.player_locale_3.health_locale = 0;
			}
		} else if (y < 1200) && (1784 < x) && (x < 2050) {
			if global.player_locale_4 = noone {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_right);
				locale_lane_x = 1805;
				alarm[0] = 65;
				playing = true;
			} else {
				array_delete(global.cards_in_hand,order_in_hand,1);
				part_system_destroy(global.locale_highlight_right);
				locale_lane_x = 1805;
				alarm[0] = 65;
				overwriting = true;
				playing = true;
				global.player_locale_4.overwritten = true;
				global.player_locale_4.health_locale = 0;
			}
		} else {
			obj_mouse_manager.grabbed_card = noone;
		}
	}
}