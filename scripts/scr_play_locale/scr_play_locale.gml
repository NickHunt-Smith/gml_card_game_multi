// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_locale(opp,position,rarity,element,card_index,target_1,target_2,target_3,play_seq = true,ignore_buffer = false){
	
	if position = "left_opp" {
		locale_lane_y = 301;
		locale_lane_x = 1018;
	} else if position = "left_middle_opp" {
		locale_lane_y = 301;
		locale_lane_x = 1283;
	} else if position = "right_middle_opp" {
		locale_lane_y = 301;
		locale_lane_x = 1545;
	} else if position = "right_opp" {
		locale_lane_y = 301;
		locale_lane_x = 1805;
	} else if position = "left_player" {
		locale_lane_y = 844;
		locale_lane_x = 1018;
	} else if position = "left_middle_player" {
		locale_lane_y = 844;
		locale_lane_x = 1283;
	} else if position = "right_middle_player" {
		locale_lane_y = 844;
		locale_lane_x = 1545;
	} else if position = "right_player" {
		locale_lane_y = 844;
		locale_lane_x = 1805;
	}
	
	
	object_set_sprite(obj_locale_played,global.rarity_list[rarity][element][0][0][card_index])
	inst_art_locale = instance_create_depth(locale_lane_x,locale_lane_y,0,obj_locale_played)
	inst_art_locale.rarity = rarity;
	inst_art_locale.element = element;
	inst_art_locale.card_type = 0;
	inst_art_locale.card_attr = 0;
	inst_art_locale.card_index = card_index;
	inst_art_locale.health_locale = global.rarity_list[rarity][element][0][2][card_index];
	inst_art_locale.channel = global.rarity_list[rarity][element][0][3][card_index];
	inst_art_locale.effect_function = global.rarity_list[rarity][element][0][4][card_index];
	inst_art_locale.opp = opp;
	inst_art_locale.position = position;
	
	if play_seq = false {
		inst_art_locale.just_played = false;
	}
	
	if position = "left_opp" {
		global.opp_locale_1 = inst_art_locale;
	} else if position = "left_middle_opp" {
		global.opp_locale_2 = inst_art_locale;
	} else if position = "right_middle_opp" {
		global.opp_locale_3 = inst_art_locale;
	} else if position = "right_opp" {
		global.opp_locale_4 = inst_art_locale;
	} else if position = "left_player" {
		global.player_locale_1 = inst_art_locale;
	} else if position = "left_middle_player" {
		global.player_locale_2 = inst_art_locale;
	} else if position = "right_middle_player" {
		global.player_locale_3 = inst_art_locale;
	} else if position = "right_player" {
		global.player_locale_4 = inst_art_locale;
	}
			
	effect_inst_opp = instance_create_depth(inst_art_locale.x,inst_art_locale.y,-800,inst_art_locale.effect_function);
	effect_inst_opp.eff_type = "play";
	effect_inst_opp.card_state = inst_art_locale;
	inst_art_locale.effect_function_inst = effect_inst_opp;
	effect_inst_opp.opp = opp;
	if target_1 = "self" {
		effect_inst_opp.target_1 = inst_art_locale
	} else {
		effect_inst_opp.target_1 = target_1;
	}
	if target_2 = "self" {
		effect_inst_opp.target_2 = inst_art_locale
	} else {
		effect_inst_opp.target_2 = target_2;
	}
	if target_3 = "self" {
		effect_inst_opp.target_3 = inst_art_locale
	} else {
		effect_inst_opp.target_3 = target_3;
	}
	if ignore_buffer = true {
		effect_inst_opp_spell.ignore_buffer = true;
	}
			
	lingering_effect_inst_opp = instance_create_depth(inst_art_locale.x,inst_art_locale.y,-800,inst_art_locale.effect_function);
	lingering_effect_inst_opp.eff_type = "lingering";
	lingering_effect_inst_opp.card_state = inst_art_locale;
	inst_art_locale.lingering_effect_function_inst = lingering_effect_inst_opp;
	lingering_effect_inst_opp.opp = opp;
	
	return [inst_art_locale,effect_inst_opp,lingering_effect_inst_opp]
}