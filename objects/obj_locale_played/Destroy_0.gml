/// @description Insert description here
// You can write your code in this editor

if overwriting = false {
	if position = "left_player" {
		global.player_locale_1 = noone;
	} else if position = "left_middle_player" {
		global.player_locale_2 = noone;
	} else if position = "right_middle_player" {
		global.player_locale_3 = noone;
	} else if position = "right_player" {
		global.player_locale_4 = noone;
	} else if position = "left_opp" {
		global.opp_locale_1 = noone;
	} else if position = "left_middle_opp" {
		global.opp_locale_2 = noone;
	} else if position = "right_middle_opp" {
		global.opp_locale_3 = noone;
	} else if position = "right_opp" {
		global.opp_locale_4 = noone;
	}
}

//if channelled_sys != noone {
//	part_system_destroy(channelled_sys);
//	channelled_sys = noone;
//}

if enable_end_turn_later {
	global.end_turn_active = true;
}

if big_mode = true {
	global.big_mode = false;
	if global.drafting = false {
		global.player_enabled = true;
	}
}

if overwriting = false {
	array_delete(global.being_destroyed,0,1);
}