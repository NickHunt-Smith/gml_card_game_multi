/// @description Insert description here
// You can write your code in this editor

if opp = true {
	if scr_check_if_targets("opp") = true {
		while (target_2 = noone) {
			var temp = random(100);
			if temp < 25 {
				target_2 = global.opp_locale_1;
			} else if (temp >= 25) && (temp < 50) {
				target_2 = global.opp_locale_2;
			} else if (temp >= 50) && (temp < 75) {
				target_2 = global.opp_locale_3;
			} else if (temp >= 75) {
				target_2 = global.opp_locale_4;
			}
		}
	}
} else {
	if scr_check_if_targets("player") = true {
		while (target_2 = noone) {
			var temp = random(100);
			if temp < 25 {
				target_2 = global.player_locale_1;
			} else if (temp >= 25) && (temp < 50) {
				target_2 = global.player_locale_2;
			} else if (temp >= 50) && (temp < 75) {
				target_2 = global.player_locale_3;
			} else if (temp >= 75) {
				target_2 = global.player_locale_4;
			}
		}
	}
}

alarm[4] = 1;

