/// @description When destroyed, no longer highlight card
// You can write your code in this editor

if (draft_mode = false) {
	//part_system_destroy(global._pfx_border_top);
	//part_system_destroy(global._pfx_border_right);
	//part_system_destroy(global._pfx_border_bottom);
	//part_system_destroy(global._pfx_border_left);
	
	if (locale_lane_x = 1018) {
		played_position = "left_player";
	} else if (locale_lane_x = 1283) {
		played_position = "left_middle_player"
	} else if (locale_lane_x = 1545) {
		played_position = "right_middle_player"
	} else if (locale_lane_x = 1805) {
		played_position = "right_player"
	}
	
	var effect_arr = scr_play_locale(false,played_position,rarity,element,card_index,noone,noone,noone);
	if created_eff != noone {
		instance_destroy(created_eff);
	}
}