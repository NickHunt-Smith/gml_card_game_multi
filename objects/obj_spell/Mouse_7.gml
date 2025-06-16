/// @description If in play area, play card
// You can write your code in this editor

if (global.player_enabled = true) {

	if (obj_mouse_manager.grabbed_card = self) {
		
		if (y < 1200) && (x > 1000) && (x < 2050) {
			part_system_destroy(play_area_highlight);
			array_delete(global.cards_in_hand,order_in_hand,1);
			alarm[0] = 65;
			playing = true;
			play_area_active = false;
			global.player_enabled = false;
		} else {
			obj_mouse_manager.grabbed_card = noone;
		}
	}
}