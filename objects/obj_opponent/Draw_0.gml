/// @description Insert description here
// You can write your code in this editor

common_locales = 0;
uncommon_locales = 0;
rare_locales = 0;
mythic_locales = 0;
legendary_locales = 0;
common_spells = 0;
uncommon_spells = 0;
rare_spells = 0;
mythic_spells = 0;
legendary_spells = 0;
for (var hand_iter = 0; hand_iter < array_length(hand_rarity); hand_iter++) {
	if hand_rarity[hand_iter] = 0 && hand_card_type[hand_iter] = 0 {
		common_locales += 1;
	}
	if hand_rarity[hand_iter] = 1 && hand_card_type[hand_iter] = 0 {
		uncommon_locales += 1;
	}
	if hand_rarity[hand_iter] = 2 && hand_card_type[hand_iter] = 0 {
		rare_locales += 1;
	}
	if hand_rarity[hand_iter] = 3 && hand_card_type[hand_iter] = 0 {
		mythic_locales += 1;
	}
	if hand_rarity[hand_iter] = 4 && hand_card_type[hand_iter] = 0 {
		legendary_locales += 1;
	}
	if hand_rarity[hand_iter] = 0 && hand_card_type[hand_iter] = 1 {
		common_spells += 1;
	}
	if hand_rarity[hand_iter] = 1 && hand_card_type[hand_iter] = 1 {
		uncommon_spells += 1;
	}
	if hand_rarity[hand_iter] = 2 && hand_card_type[hand_iter] = 1 {
		rare_spells += 1;
	}
	if hand_rarity[hand_iter] = 3 && hand_card_type[hand_iter] = 1 {
		mythic_spells += 1;
	}
	if hand_rarity[hand_iter] = 4 && hand_card_type[hand_iter] = 1 {
		legendary_spells += 1;
	}
}

draw_sprite_ext(s_opp_cards_tooltip,0,2214,25,1,1,0,c_white,1);
draw_set_font(Empower_font);
tooltip_string_1 = "Locales: " + string(common_locales) + "/" + string(uncommon_locales) + "/" + string(rare_locales) + "/" + string(mythic_locales) + "/" + string(legendary_locales);
draw_text_colour(2450,75,tooltip_string_1,c_maroon,c_maroon,c_maroon,c_maroon,1);
tooltip_string_2 = "Spells: " + string(common_spells) + "/" + string(uncommon_spells) + "/" + string(rare_spells) + "/" + string(mythic_spells) + "/" + string(legendary_spells);
draw_text_colour(2450,125,tooltip_string_2,c_maroon,c_maroon,c_maroon,c_maroon,1);

draw_text_colour(2450,175,string(global.turn_count),c_maroon,c_maroon,c_maroon,c_maroon,1);