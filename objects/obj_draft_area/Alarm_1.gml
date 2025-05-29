/// @description Insert description here
// You can write your code in this editor

if global.pvp_active = false {
	if extra_opp_card = true {
		var rarity = 0;
		if global.turn_count < 1 {
			var rarity_dist = [70,95,100,100,100];
		} else if global.turn_count >= 1 && global.turn_count < 2 {
			var rarity_dist = [50,80,95,100,100];
		} else if global.turn_count >= 2 && global.turn_count < 3 {
			var rarity_dist = [45,73,88,98,100];
		} else if global.turn_count >= 3 && global.turn_count < 4 {
			var rarity_dist = [40,67,85,95,100];
		} else if global.turn_count >= 4 && global.turn_count < 6 {
			var rarity_dist = [32,55,73,90,100];
		} else if global.turn_count >= 6 && global.turn_count < 8 {
			var rarity_dist = [24,46,67,86,100];
		} else if global.turn_count >= 8 {
			var rarity_dist = [20,40,60,80,100];
		}
		
		var temp = random(100);
		if temp < rarity_dist[0] {
			rarity = 0;
		} else if temp >= rarity_dist[0] && temp < rarity_dist[1] {
			rarity = 1;
		} else if temp >= rarity_dist[1] && temp < rarity_dist[2] {
			rarity = 2;
		} else if temp >= rarity_dist[2] && temp < rarity_dist[3] {
			rarity = 3;
		} else if temp >= rarity_dist[3] && temp <= rarity_dist[4] {
			rarity = 4;
		}
	
		var card_type = 0;
		if (scr_check_if_targets("opp") = false && scr_check_if_targets("player") = false) && (global.opponent.common_locales + global.opponent.uncommon_locales + global.opponent.rare_locales + global.opponent.mythic_locales + global.opponent.legendary_locales = 0) {
		//if (scr_check_if_targets("opp") = false && scr_check_if_targets("player") = false) {
			card_type = 0;
		} else {
			var card_type_dist = [50,100];
			var player_locales = 0;
			var opp_locales = 0;
			if global.player_locale_1 != noone {
				player_locales += 1;
			}
			if global.player_locale_2 != noone {
				player_locales += 1;
			}
			if global.player_locale_3 != noone {
				player_locales += 1;
			}
			if global.player_locale_4 != noone {
				player_locales += 1;
			}
			if global.opp_locale_1 != noone {
				opp_locales += 1;
			}
			if global.opp_locale_2 != noone {
				opp_locales += 1;
			}
			if global.opp_locale_3 != noone {
				opp_locales += 1;
			}
			if global.opp_locale_4 != noone {
				opp_locales += 1;
			}
			if player_locales >= 3 && opp_locales >= 3 {
				card_type_dist = [30,70];
			} else if player_locales <= 1 && opp_locales <= 1 {
				card_type_dist = [70,30];
			}
			var temp = random(100);
			if temp < card_type_dist[0] {
				card_type = 0;
			} else if temp >= card_type_dist[0] && temp < card_type_dist[1] {
				card_type = 1;
			} 
		}
		array_push(global.opponent.hand_rarity,rarity);
		array_push(global.opponent.hand_card_type,card_type);
				
		//array_push(global.opponent.hand_rarity,4);
		//array_push(global.opponent.hand_card_type,1);
		//array_push(global.opponent.hand_rarity,2);
		//array_push(global.opponent.hand_card_type,1);
	}
	global.drafting = false;
	part_emitter_destroy_all(summon_whirlpool_1);
	part_emitter_destroy_all(summon_whirlpool_2);
	part_emitter_destroy_all(summon_whirlpool_3);
	part_emitter_destroy_all(sparkle_rain);
	part_emitter_destroy_all(shooting_stars);
	emit_destroy = false;
	alarm[0] = 100;
	if switch_priority = true {
		global.priority = "opp";
	} else {
		global.player_enabled = true;
	}
} else {
	if emit_destroy = true {
		part_emitter_destroy_all(summon_whirlpool_1);
		part_emitter_destroy_all(summon_whirlpool_2);
		part_emitter_destroy_all(summon_whirlpool_3);
		part_emitter_destroy_all(sparkle_rain);
		part_emitter_destroy_all(shooting_stars);
		emit_destroy = false;
	}
	if rarity_locked = false {
		if sync_draft() = false {
			alarm[1] = 1;
		}
	} else {
		if extra_opp_card = true {
			var rarity = 0;
			if global.turn_count < 1 {
				var rarity_dist = [70,95,100,100,100];
			} else if global.turn_count >= 1 && global.turn_count < 2 {
				var rarity_dist = [50,80,95,100,100];
			} else if global.turn_count >= 2 && global.turn_count < 3 {
				var rarity_dist = [45,73,88,98,100];
			} else if global.turn_count >= 3 && global.turn_count < 4 {
				var rarity_dist = [40,67,85,95,100];
			} else if global.turn_count >= 4 && global.turn_count < 6 {
				var rarity_dist = [32,55,73,90,100];
			} else if global.turn_count >= 6 && global.turn_count < 8 {
				var rarity_dist = [24,46,67,86,100];
			} else if global.turn_count >= 8 {
				var rarity_dist = [20,40,60,80,100];
			}
		
			var temp = random(100);
			if temp < rarity_dist[0] {
				rarity = 0;
			} else if temp >= rarity_dist[0] && temp < rarity_dist[1] {
				rarity = 1;
			} else if temp >= rarity_dist[1] && temp < rarity_dist[2] {
				rarity = 2;
			} else if temp >= rarity_dist[2] && temp < rarity_dist[3] {
				rarity = 3;
			} else if temp >= rarity_dist[3] && temp <= rarity_dist[4] {
				rarity = 4;
			}
	
			var card_type = 0;
			if (scr_check_if_targets("opp") = false && scr_check_if_targets("player") = false) && (global.opponent.common_locales + global.opponent.uncommon_locales + global.opponent.rare_locales + global.opponent.mythic_locales + global.opponent.legendary_locales = 0) {
			//if (scr_check_if_targets("opp") = false && scr_check_if_targets("player") = false) {
				card_type = 0;
			} else {
				var card_type_dist = [50,100];
				var player_locales = 0;
				var opp_locales = 0;
				if global.player_locale_1 != noone {
					player_locales += 1;
				}
				if global.player_locale_2 != noone {
					player_locales += 1;
				}
				if global.player_locale_3 != noone {
					player_locales += 1;
				}
				if global.player_locale_4 != noone {
					player_locales += 1;
				}
				if global.opp_locale_1 != noone {
					opp_locales += 1;
				}
				if global.opp_locale_2 != noone {
					opp_locales += 1;
				}
				if global.opp_locale_3 != noone {
					opp_locales += 1;
				}
				if global.opp_locale_4 != noone {
					opp_locales += 1;
				}
				if player_locales >= 3 && opp_locales >= 3 {
					card_type_dist = [30,70];
				} else if player_locales <= 1 && opp_locales <= 1 {
					card_type_dist = [70,30];
				}
				var temp = random(100);
				if temp < card_type_dist[0] {
					card_type = 0;
				} else if temp >= card_type_dist[0] && temp < card_type_dist[1] {
					card_type = 1;
				} 
			}
			array_push(global.opponent.hand_rarity,rarity);
			array_push(global.opponent.hand_card_type,card_type);
				
			//array_push(global.opponent.hand_rarity,4);
			//array_push(global.opponent.hand_card_type,1);
			//array_push(global.opponent.hand_rarity,2);
			//array_push(global.opponent.hand_card_type,1);
		}
		global.drafting = false;
		alarm[0] = 100;
		if global.priority = "opp" {
			global.player_enabled = false;
		} else {
			global.player_enabled = true;
		}
	}
}