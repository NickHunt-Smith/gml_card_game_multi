
if opp = true {
	var target_1 = global.player_locale_1;
	var target_2 = global.player_locale_2;
	var target_3 = global.player_locale_3;
	var target_4 = global.player_locale_4;
	
	global.player_locale_1 = target_4;
	global.player_locale_2 = target_1;
	global.player_locale_3 = target_2;
	global.player_locale_4 = target_3;
} else {
	var target_1 = global.opp_locale_1;
	var target_2 = global.opp_locale_2;
	var target_3 = global.opp_locale_3;
	var target_4 = global.opp_locale_4;
	
	global.opp_locale_1 = target_4;
	global.opp_locale_2 = target_1;
	global.opp_locale_3 = target_2;
	global.opp_locale_4 = target_3;
}

alarm[1] = 1;