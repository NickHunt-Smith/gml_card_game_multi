// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_if_targets(targets){
	if targets = "player" {
		if global.player_locale_1 != noone or global.player_locale_2 != noone or global.player_locale_3 != noone or global.player_locale_4 != noone {
			return true
		} else {
			return false
		}
	} else if targets = "opp" {
		if global.opp_locale_1 != noone or global.opp_locale_2 != noone or global.opp_locale_3 != noone or global.opp_locale_4 != noone {
			return true
		} else {
			return false
		}
	}
}