
if array_length(global.opponent.hand_rarity) > array_length(opp_hand) {
	if global.opponent.hand_rarity[array_length(global.opponent.hand_rarity)-1] = 0 {
		if global.opponent.hand_card_type[array_length(global.opponent.hand_card_type)-1] = 0 {
			object_set_sprite(obj_opp_card,s_common_card_back_locale);
		} else {
			object_set_sprite(obj_opp_card,s_common_card_back_spell);
		}
	} else if global.opponent.hand_rarity[array_length(global.opponent.hand_rarity)-1] = 1 {
		if global.opponent.hand_card_type[array_length(global.opponent.hand_card_type)-1] = 0 {
			object_set_sprite(obj_opp_card,s_uncommon_card_back_locale);
		} else {
			object_set_sprite(obj_opp_card,s_uncommon_card_back_spell);
		}
	} else if global.opponent.hand_rarity[array_length(global.opponent.hand_rarity)-1] = 2 {
		if global.opponent.hand_card_type[array_length(global.opponent.hand_card_type)-1] = 0 {
			object_set_sprite(obj_opp_card,s_rare_card_back_locale);
		} else {
			object_set_sprite(obj_opp_card,s_rare_card_back_spell);
		}
	} else if global.opponent.hand_rarity[array_length(global.opponent.hand_rarity)-1] = 3 {
		if global.opponent.hand_card_type[array_length(global.opponent.hand_card_type)-1] = 0 {
			object_set_sprite(obj_opp_card,s_mythic_card_back_locale);
		} else {
			object_set_sprite(obj_opp_card,s_mythic_card_back_spell);
		}
	} else if global.opponent.hand_rarity[array_length(global.opponent.hand_rarity)-1] = 4 {
		if global.opponent.hand_card_type[array_length(global.opponent.hand_card_type)-1] = 0 {
			object_set_sprite(obj_opp_card,s_legendary_card_back_locale);
		} else {
			object_set_sprite(obj_opp_card,s_legendary_card_back_spell);
		}
	}
	var card_back = instance_create_depth(x_start,y_start,-875,obj_opp_card);
	card_back.order_in_hand = array_length(global.opponent.hand_rarity)-1;
	array_push(opp_hand,card_back);
	array_push(global.cards_in_hand_opp,card_back);
	array_push(opp_hand_rarities,global.opponent.hand_rarity[array_length(global.opponent.hand_rarity)-1]);
	array_push(opp_hand_card_types,global.opponent.hand_card_type[array_length(global.opponent.hand_card_type)-1]);
}

if array_length(global.opponent.hand_rarity) < array_length(opp_hand) {
	var destroying = false;
	for (var _i = 0; _i < array_length(global.opponent.hand_rarity); _i++) {
		if opp_hand_rarities[_i] != global.opponent.hand_rarity[_i] or opp_hand_card_types[_i] != global.opponent.hand_card_type[_i] {
			instance_destroy(opp_hand[_i]);
			array_delete(opp_hand,_i,1);
			array_delete(opp_hand_rarities,_i,1);
			array_delete(opp_hand_card_types,_i,1);
			array_delete(global.cards_in_hand_opp,_i,1);
			destroying = true;
			break
		}
	}
	if destroying = false {
		array_delete(global.cards_in_hand_opp,array_length(opp_hand)-1,1);
		instance_destroy(opp_hand[array_length(opp_hand)-1]);
		array_delete(opp_hand_rarities,array_length(opp_hand)-1,1);
		array_delete(opp_hand_card_types,array_length(opp_hand)-1,1);
		array_delete(opp_hand,array_length(opp_hand)-1,1);
	}
}

for (var _i = 0; _i < array_length(global.cards_in_hand_opp); _i++) {
	global.cards_in_hand_opp[_i].order_in_hand = _i;
}