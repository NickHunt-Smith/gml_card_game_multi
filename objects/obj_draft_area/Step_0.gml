/// @description Insert description here
// You can write your code in this editor

image_alpha = lerp(image_alpha, 1, 0.09);

if (summon_cards = true) && debug_test = true {
	global.drafting = true;
	global.player_enabled = false;
	
	var card_inst = noone;
	
	var rarity = 0;
	var element = 0;
	var card_type = 0;
	var card_index = 0;
	var order = 0;
	
	card_inst_1 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	var rarity = 2;
	var element = 1;
	var card_type = 0;
	var card_index = 1;
	var order = 1;
	card_inst_2 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	var rarity = 0;
	var element = 2;
	var card_type = 0;
	var card_index = 0;
	var order = 2;
	card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	summon_cards = false;
}


if (summon_cards = true) && debug_test = false {
	global.drafting = true;
	global.player_enabled = false;
	
	var card_inst = noone;
	
	var rarity = 0;
	if rarity_locked = true {
		rarity = rarity_locked_i;
	} else {
		if global.turn_count < 1 {
			var rarity_dist = [70,95,100,100,100];
		} else if global.turn_count >= 1 && global.turn_count < 2 {
			var rarity_dist = [50,80,95,100,100];
		} else if global.turn_count >= 2 && global.turn_count < 4 {
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
	}
	
	var card_type = 0;
	if card_type_locked = true {
		card_type = card_type_locked_i;
	} else {
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
	}
	
	var element = 0;
	if element_locked = true {
		element = element_locked_i;
	} else {
		var prob_ruby  = 33.33;
		var prob_pearl  = 33.33;
		var prob_onyx  = 33.33;
		var total_ruby = global.channelled_left_player_ruby + global.channelled_right_player_ruby;
		var total_pearl = global.channelled_left_player_pearl + global.channelled_right_player_pearl;
		var total_onyx = global.channelled_left_player_onyx + global.channelled_right_player_onyx;
		if total_ruby > 4 && total_onyx > 4 {
			prob_ruby += 8;
			prob_onyx += 8;
			prob_pearl -= 16;
		}
		if total_ruby > 8 && total_onyx > 8 {
			prob_ruby += 15;
			prob_onyx += 15;
			prob_pearl -= 30;
		}
		if total_ruby > 4 && total_pearl > 4 {
			prob_ruby += 8;
			prob_pearl += 8;
			prob_onyx -= 16;
		}
		if total_ruby > 8 && total_pearl > 8 {
			prob_ruby += 15;
			prob_pearl += 15;
			prob_onyx -= 30;
		}
		if total_onyx > 4 && total_pearl > 4 {
			prob_onyx += 8;
			prob_pearl += 8;
			prob_ruby -= 16;
		}
		if total_onyx > 8 && total_pearl > 8{
			prob_onyx += 15;
			prob_pearl += 15;
			prob_ruby -= 30;
		}
		
		var element_dist = [prob_ruby,prob_ruby + prob_pearl,prob_ruby + prob_pearl + prob_onyx];
		var temp = random(100);
		if temp < element_dist[0] {
			element = 0;
		} else if temp >= element_dist[0] && temp < element_dist[1] {
			element = 1;
		} else if temp >= element_dist[1] && temp <= element_dist[2] {
			element = 2;
		}
	}
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
	}
	var card_index = 0;
	var temp = random(100);
	for (var _i = 0; _i < array_length(card_index_dist); _i++) {
		if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
			card_index = _i;
		}
	}
	
	var order = 0;
	
	card_inst_1 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	var element = 0;
	if element_locked = true {
		element = element_locked_i;
	} else {
		var prob_ruby  = 33.33;
		var prob_pearl  = 33.33;
		var prob_onyx  = 33.33;
		var total_ruby = global.channelled_left_player_ruby + global.channelled_right_player_ruby;
		var total_pearl = global.channelled_left_player_pearl + global.channelled_right_player_pearl;
		var total_onyx = global.channelled_left_player_onyx + global.channelled_right_player_onyx;
		if total_ruby > 5 && total_onyx > 5 {
			prob_ruby += 8;
			prob_onyx += 8;
			prob_pearl -= 16;
		}
		if total_ruby > 10 && total_onyx > 10 {
			prob_ruby += 15;
			prob_onyx += 15;
			prob_pearl -= 30;
		}
		if total_ruby > 5 && total_pearl > 5 {
			prob_ruby += 8;
			prob_pearl += 8;
			prob_onyx -= 16;
		}
		if total_ruby > 10 && total_pearl > 10 {
			prob_ruby += 15;
			prob_pearl += 15;
			prob_onyx -= 30;
		}
		if total_onyx > 5 && total_pearl > 5 {
			prob_onyx += 8;
			prob_pearl += 8;
			prob_ruby -= 16;
		}
		if total_onyx > 10 && total_pearl > 10 {
			prob_onyx += 15;
			prob_pearl += 15;
			prob_ruby -= 30;
		}
		
		var element_dist = [prob_ruby,prob_ruby + prob_pearl,prob_ruby + prob_pearl + prob_onyx];
		var temp = random(100);
		if temp < element_dist[0] {
			element = 0;
		} else if temp >= element_dist[0] && temp < element_dist[1] {
			element = 1;
		} else if temp >= element_dist[1] && temp <= element_dist[2] {
			element = 2;
		}
	}
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
	}
	var card_index = 0;
	while element = card_inst_1.element && card_index = card_inst_1.card_index{
		temp = random(100);
		for (var _i = 0; _i < array_length(card_index_dist); _i++) {
			if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
				card_index = _i;
			}
		}
	}
	
	var order = 1;
	
	card_inst_2 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	var element = 0;
	if element_locked = true {
		element = element_locked_i;
	} else {
		var prob_ruby  = 33.33;
		var prob_pearl  = 33.33;
		var prob_onyx  = 33.33;
		var total_ruby = global.channelled_left_player_ruby + global.channelled_right_player_ruby;
		var total_pearl = global.channelled_left_player_pearl + global.channelled_right_player_pearl;
		var total_onyx = global.channelled_left_player_onyx + global.channelled_right_player_onyx;
		if total_ruby > 5 && total_onyx > 5 {
			prob_ruby += 8;
			prob_onyx += 8;
			prob_pearl -= 16;
		}
		if total_ruby > 10 && total_onyx > 10 {
			prob_ruby += 15;
			prob_onyx += 15;
			prob_pearl -= 30;
		}
		if total_ruby > 5 && total_pearl > 5 {
			prob_ruby += 8;
			prob_pearl += 8;
			prob_onyx -= 16;
		}
		if total_ruby > 10 && total_pearl > 10 {
			prob_ruby += 15;
			prob_pearl += 15;
			prob_onyx -= 30;
		}
		if total_onyx > 5 && total_pearl > 5 {
			prob_onyx += 8;
			prob_pearl += 8;
			prob_ruby -= 16;
		}
		if total_onyx > 10 && total_pearl > 10 {
			prob_onyx += 15;
			prob_pearl += 15;
			prob_ruby -= 30;
		}
		
		var element_dist = [prob_ruby,prob_ruby + prob_pearl,prob_ruby + prob_pearl + prob_onyx];
		var temp = random(100);
		if temp < element_dist[0] {
			element = 0;
		} else if temp >= element_dist[0] && temp < element_dist[1] {
			element = 1;
		} else if temp >= element_dist[1] && temp <= element_dist[2] {
			element = 2;
		}
	}
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
	}
	var card_index = 0;
	while (element = card_inst_1.element && card_index = card_inst_1.card_index) or (element = card_inst_2.element && card_index = card_inst_2.card_index){
		temp = random(100);
		for (var _i = 0; _i < array_length(card_index_dist); _i++) {
			if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
				card_index = _i;
			}
		}
	}
	
	var order = 2;
	
	card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	if card_type_locked = false {
		array_push(global.opponent.hand_rarity,rarity);
		array_push(global.opponent.hand_card_type,card_type);
	}
	
	summon_cards = false;
}

if (emit_destroy = true) && syncing = false {
	if (card_inst_1.draft_mode = false) or (card_inst_2.draft_mode = false) or (card_inst_3.draft_mode = false) {
		draft_count -= 1;
		
		if card_inst_1.draft_mode = true {
			instance_destroy(card_inst_1.created_eff);
			instance_destroy(card_inst_1);
		} 
		if card_inst_2.draft_mode = true {
			instance_destroy(card_inst_2.created_eff);
			instance_destroy(card_inst_2);
		} 
		if card_inst_3.draft_mode = true {
			instance_destroy(card_inst_3.created_eff);
			instance_destroy(card_inst_3);
		} 
		
		if (draft_count = 0) {
			button_draw = false;
			global.draft_area_visible = false;
			alarm[1] = 1;
			syncing = true;
		} else {
			summon_cards = true;
		}
	}
} else if (emit_destroy = false) {
	image_alpha = clamp(image_alpha-0.09,0,1);
}