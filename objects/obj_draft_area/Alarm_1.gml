/// @description Insert description here
// You can write your code in this editor

if global.pvp_active = false {
	if extra_opp_card = true {
		var rarity = 0;
		if global.encounter_level = 0 {
			global.rarity_dist = [100,100,100,100,100];
		} else if global.encounter_level = 1 {
			if global.turn_count < 1 {
				global.rarity_dist = [95,100,100,100,100];
			} else if global.turn_count >= 1 && global.turn_count < 2 {
				global.rarity_dist = [80,100,100,100,100];
			} else if global.turn_count >= 2 && global.turn_count < 4 {
				global.rarity_dist = [65,100,100,100,100];
			} else if global.turn_count >= 4 {
				global.rarity_dist = [50,100,100,100,100];
			}
		} else if global.encounter_level = 4 {
			if global.turn_count < 1 {
				global.rarity_dist = [90,100,100,100,100];
			} else if global.turn_count >= 1 && global.turn_count < 2 {
				global.rarity_dist = [75,95,100,100,100];
			} else if global.turn_count >= 2 && global.turn_count < 3 {
				global.rarity_dist = [55,85,100,100,100];
			} else if global.turn_count >= 3 && global.turn_count < 4 {
				global.rarity_dist = [45,78,98,100,100];
			} else if global.turn_count >= 4 && global.turn_count < 5 {
				global.rarity_dist = [30,70,95,100,100];
			} else if global.turn_count >= 5 && global.turn_count < 6 {
				global.rarity_dist = [19,49,89,99,100];
			} else if global.turn_count >= 6 && global.turn_count < 7 {
				global.rarity_dist = [17,41,73,97,100];
			} else if global.turn_count >= 7 && global.turn_count < 8 {
				global.rarity_dist = [15,33,58,88,100];
			} else if global.turn_count >= 8 && global.turn_count < 9 {
				global.rarity_dist = [5,15,35,75,100];
			} else if global.turn_count >= 9 {
				global.rarity_dist = [1,3,15,65,100];
			}
		}
		
		var temp = random(100);
		if temp < global.rarity_dist[0] {
			rarity = 0;
		} else if temp >= global.rarity_dist[0] && temp < global.rarity_dist[1] {
			rarity = 1;
		} else if temp >= global.rarity_dist[1] && temp < global.rarity_dist[2] {
			rarity = 2;
		} else if temp >= global.rarity_dist[2] && temp < global.rarity_dist[3] {
			rarity = 3;
		} else if temp >= global.rarity_dist[3] && temp <= global.rarity_dist[4] {
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
	if summon_whirlpool_1 != noone {
		part_emitter_destroy_all(summon_whirlpool_1);
		summon_whirlpool_1 = noone;
	}
	if summon_whirlpool_2 != noone {
		part_emitter_destroy_all(summon_whirlpool_2);
		summon_whirlpool_2 = noone;
	}
	if summon_whirlpool_3 != noone {
		part_emitter_destroy_all(summon_whirlpool_3);
		summon_whirlpool_3 = noone;
	}
	if sparkle_rain != noone {
		part_emitter_destroy_all(sparkle_rain);
		sparkle_rain = noone;
	}
	if global.cheap_mode = false {
		if shooting_stars != noone {
			part_system_destroy(shooting_stars);
			shooting_stars = noone;
		}
	}
	emit_destroy = false;
	if new_turn = true {
		global.phase = "action";
		action_phase_seq = layer_sequence_create("effect_layer",1522,754,seq_action_phase);
	}
	alarm[0] = 100;
	if switch_priority = true {
		global.priority = "opp";
	} else {
		if global.end_turn_active = false && global.resolve_stack = false {
			global.player_enabled = true;
		}
	}
} else {
	if emit_destroy = true {
		if summon_whirlpool_1 != noone {
			part_emitter_destroy_all(summon_whirlpool_1);
			summon_whirlpool_1 = noone;
		}
		if summon_whirlpool_2 != noone {
			part_emitter_destroy_all(summon_whirlpool_2);
			summon_whirlpool_2 = noone;
		}
		if summon_whirlpool_3 != noone {
			part_emitter_destroy_all(summon_whirlpool_3);
			summon_whirlpool_3 = noone;
		}
		if sparkle_rain != noone {
			part_emitter_destroy_all(sparkle_rain);
			sparkle_rain = noone;
		}
		if global.cheap_mode = false {
			if shooting_stars != noone {
				part_system_destroy(shooting_stars);
				shooting_stars = noone;
			}
		}
		emit_destroy = false;
	}
	if rarity_locked = false {
		if sync_draft() = false {
			alarm[1] = 1;
		} else {
			global.drafting = false;
			if new_turn = true {
				global.phase = "action";
				action_phase_seq = layer_sequence_create("effect_layer",1522,754,seq_action_phase);
			}
			alarm[0] = 100;
			if switch_priority = true {
				global.priority = "opp";
			}
			if global.priority = "opp" {
				global.player_enabled = false;
			} else {
				if global.end_turn_active = false && global.resolve_stack = false {
					global.player_enabled = true;
				}
			}
		}
	} else {
		global.drafting = false;
		alarm[0] = 100;
		if switch_priority = true {
			global.priority = "opp";
		}
		if global.priority = "opp" {
			global.player_enabled = false;
		} else {
			if global.end_turn_active = false && global.resolve_stack = false {
				global.player_enabled = true;
			}
		}
	}
}