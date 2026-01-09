/// @description If in play area, play card
// You can write your code in this editor

if (global.player_enabled = true) {
	if (obj_mouse_manager.grabbed_card = self) {
		if (y < 1200) && (x > 1000) && (x < 2050) {
			if global.tutorial = false or global.tutorial_step = 56 or (global.tutorial_step = 89 && element = 3) or (global.tutorial_step = 91 && element = 4) {
				if global.tutorial = true {
					global.tutorial_step += 1;
					global.wait_for_tutorial_step = false;
				}
				if global.cheap_mode = false {
					part_system_destroy(play_area_highlight);
				}
				array_delete(global.cards_in_hand,order_in_hand,1);
				alarm[0] = 62;
				playing = true;
				play_area_active = false;
				global.player_enabled = false;
			} else if global.tutorial = true && global.tutorial_step = 89 && element != 3 && play_area_highlight != noone && global.cheap_mode = false {
				part_system_destroy(play_area_highlight);
				play_area_highlight = noone;
			}
		} else {
			obj_mouse_manager.grabbed_card = noone;
		}
	}
}