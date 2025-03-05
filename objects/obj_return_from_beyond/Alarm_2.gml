/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	var rarity_high = 0;
	var element_high = 0;
	var card_index_high = 0;
	var channel_high = 0;
	
	if opp = false {
		for (var _i = 0; _i < array_length(global.player.destroyed_locales_rarity); _i++) {
			if global.player.destroyed_locales_rarity[_i] > rarity_high {
				rarity_high = global.player.destroyed_locales_rarity[_i];
				element_high = global.player.destroyed_locales_element[_i];
				card_index_high = global.player.destroyed_locales_card_index[_i];
				channel_high = global.rarity_list[global.player.destroyed_locales_rarity[_i]][global.player.destroyed_locales_element[_i]][0][3][global.player.destroyed_locales_card_index[_i]];
			} else if global.player.destroyed_locales_rarity[_i] = rarity_high {
				if global.rarity_list[global.player.destroyed_locales_rarity[_i]][global.player.destroyed_locales_element[_i]][0][3][global.player.destroyed_locales_card_index[_i]] > channel_high {
					rarity_high = global.player.destroyed_locales_rarity[_i];
					element_high = global.player.destroyed_locales_element[_i];
					card_index_high = global.player.destroyed_locales_card_index[_i];
					channel_high = global.rarity_list[global.player.destroyed_locales_rarity[_i]][global.player.destroyed_locales_element[_i]][0][3][global.player.destroyed_locales_card_index[_i]];
				}
			}
		}
	} else {
		for (var _i = 0; _i < array_length(global.opponent.destroyed_locales_rarity); _i++) {
			if global.opponent.destroyed_locales_rarity[_i] > rarity_high {
				rarity_high = global.opponent.destroyed_locales_rarity[_i];
				element_high = global.opponent.destroyed_locales_element[_i];
				card_index_high = global.opponent.destroyed_locales_card_index[_i];
				channel_high = global.rarity_list[global.opponent.destroyed_locales_rarity[_i]][global.opponent.destroyed_locales_element[_i]][0][3][global.opponent.destroyed_locales_card_index[_i]];
			} else if global.opponent.destroyed_locales_rarity[_i] = rarity_high {
				if global.rarity_list[global.opponent.destroyed_locales_rarity[_i]][global.opponent.destroyed_locales_element[_i]][0][3][global.opponent.destroyed_locales_card_index[_i]] > channel_high {
					rarity_high = global.opponent.destroyed_locales_rarity[_i];
					element_high = global.opponent.destroyed_locales_element[_i];
					card_index_high = global.opponent.destroyed_locales_card_index[_i];
					channel_high = global.rarity_list[global.opponent.destroyed_locales_rarity[_i]][global.opponent.destroyed_locales_element[_i]][0][3][global.opponent.destroyed_locales_card_index[_i]];
				}
			}
		}
	}
	
	var effect_arr = scr_play_locale(opp,target_1.position,rarity_high,element_high,card_index_high,noone,noone,noone);
	alarm[0] = 50;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 50;
}