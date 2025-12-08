/// @description Insert description here
// You can write your code in this editor

pass = false;
overwriting = false;

// Decide to pass or not
var pass_prob = 15;
//if array_length(hand_rarity) < 2 {
//	pass_prob += 20;
//}
if array_length(hand_rarity) > 4 {
	pass_prob -= 10;
}
var opp_channel_left = array_max(global.channelled_left_opp);
var opp_channel_right = array_max(global.channelled_right_opp);
var player_channel_left = array_max(global.channelled_left_player);
var player_channel_right = array_max(global.channelled_right_player);
if opp_channel_left < player_channel_left {
	pass_prob -= 12;
} 
if opp_channel_right < player_channel_right {
	pass_prob -= 12;
}
if opp_channel_left > player_channel_left {
	pass_prob += 10;
} 
if opp_channel_right > player_channel_right {
	pass_prob += 10;
}

opp_channel_left = 0;
opp_channel_right = 0;
player_channel_left = 0;
player_channel_right = 0;
if global.opp_locale_1 != noone {
	opp_channel_left += global.opp_locale_1.channel;
}
if global.opp_locale_2 != noone {
	opp_channel_left += global.opp_locale_2.channel;
}
if global.opp_locale_3 != noone {
	opp_channel_right += global.opp_locale_3.channel;
}
if global.opp_locale_4 != noone {
	opp_channel_right += global.opp_locale_4.channel;
}
if global.player_locale_1 != noone {
	player_channel_left += global.player_locale_1.channel;
}
if global.player_locale_2 != noone {
	player_channel_left += global.player_locale_2.channel;
}
if global.player_locale_3 != noone {
	player_channel_right += global.player_locale_3.channel;
}
if global.player_locale_4 != noone {
	player_channel_right += global.player_locale_4.channel;
}
if opp_channel_left < player_channel_left {
	pass_prob -= 12;
} 
if opp_channel_right < player_channel_right {
	pass_prob -= 12;
}
if opp_channel_left > player_channel_left {
	pass_prob += 10;
} 
if opp_channel_right > player_channel_right {
	pass_prob += 10;
}
if (common_locales + uncommon_locales + rare_locales + mythic_locales + legendary_locales > 0) && (global.opp_locale_1 = noone or global.opp_locale_2 = noone or global.opp_locale_3 = noone or global.opp_locale_4 = noone) {
	pass_prob -= 25;
}

if array_length(hand_rarity) = 0 or (global.stack_active = true && array_max(hand_card_type) = 0) {
	pass = true;
	show_debug_message("pass empty hand")
} else if random(100) < pass_prob {
	pass = true;
	show_debug_message("pass randomly")
} else {
	// Try 3 times before passing
	for (var attempt = 0; attempt < 3; attempt++) {
		pass = false;
		// Choose rarity and card type from available options
		var valid_choice = false;
		rarity = 0;
		card_type = 0;
		hand_choice = 0;
		if global.stack_active = true {
			if common_spells + uncommon_spells + rare_spells + mythic_spells + legendary_spells > 0 {
				while valid_choice = false {
					hand_choice = irandom(array_length(hand_rarity)-1);
					card_type = hand_card_type[hand_choice];
					if card_type = 1 {
						rarity = hand_rarity[hand_choice];
						valid_choice = true;
					}
				}
			} else {
				pass = true;
				show_debug_message("pass no spells")
			}
		} else {
			while valid_choice = false {
				var spell_prob = 25;
				hand_choice = irandom(array_length(hand_rarity)-1);
				card_type = hand_card_type[hand_choice];
				if card_type = 1 && random(100) < spell_prob {
					rarity = hand_rarity[hand_choice];
					valid_choice = true;
				} else if card_type = 0 && random(100) > spell_prob {
					rarity = hand_rarity[hand_choice];
					valid_choice = true;
				}
			}
		}
		
		// Choose card option within deck
		if pass = false {
			var deck_options = [];
			var deck_iter = 0;
			for (deck_iter = 0; deck_iter < array_length(deck_rarity); deck_iter++) {
				if deck_rarity[deck_iter] = rarity && deck_card_type[deck_iter] = card_type {
					array_push(deck_options,deck_iter);
				}
			}
			var chosen_card = deck_options[irandom(array_length(deck_options)-1)];
			element = deck_element[chosen_card];
			card_index = deck_card_index[chosen_card];
		
			// Pick targets for effects
			var targets = scr_choose_targets(deck_target[chosen_card]);
			target_1 = targets[0];
			target_2 = targets[1];
			target_3 = targets[2];
		
			if target_1 = "pass" or target_2 = "pass" or target_3 = "pass" {
				pass = true;
				show_debug_message("pass bad targets");
			} else {
				if card_type = 1 {
					alarm[3] = 65;
					array_delete(hand_rarity,hand_choice,1);
					array_delete(hand_card_type,hand_choice,1);
					playing = true;
		
					//// Target empty locale
					//var target_empty = instance_create_depth(0,0,0,obj_target_empty);
					//target_empty.position = "left_middle_opp";
					//target_empty.active = false;
					//target_empty.opp = true;
					//inst_art_spell = scr_play_spell(true,3,2,1,global.opp_locale_1,target_empty,global.player_locale_3);

				} else {
					var temp_side = random(100);
					chosen_position = "left_opp";
					if element = element_1 && element_1_side = "left" {
						if global.opp_locale_1 = noone && global.opp_locale_2 = noone {
							if temp_side < 50 {
								chosen_position = "left_opp";
							} else {
								chosen_position = "left_middle_opp";
							}
						} else if global.opp_locale_2 = noone {
							chosen_position = "left_middle_opp";
						} else if global.opp_locale_1 = noone {
							chosen_position = "left_opp";
						} else if temp_side < 50 {
							if (global.opp_locale_1.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_1.rarity < rarity && global.opp_locale_1.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "left_opp";
								global.opp_locale_1.overwritten = true;
								global.opp_locale_1.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						} else {
							if (global.opp_locale_2.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_2.rarity < rarity && global.opp_locale_2.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "left_middle_opp";
								global.opp_locale_2.overwritten = true;
								global.opp_locale_2.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						}
					} else if element = element_1 && element_1_side = "right" {
						if global.opp_locale_3 = noone && global.opp_locale_4 = noone {
							if temp_side < 50 {
								chosen_position = "right_opp";
							} else {
								chosen_position = "right_middle_opp";
							}
						} else if global.opp_locale_4 = noone {
							chosen_position = "right_opp";
						} else if global.opp_locale_3 = noone {
							chosen_position = "right_middle_opp";
						} else if temp_side < 50 {
							if (global.opp_locale_3.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_3.rarity < rarity && global.opp_locale_3.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "right_middle_opp";
								global.opp_locale_3.overwritten = true;
								global.opp_locale_3.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						} else {
							if (global.opp_locale_4.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_4.rarity < rarity && global.opp_locale_4.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "right_opp";
								global.opp_locale_4.overwritten = true;
								global.opp_locale_4.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						}
					} else if element = element_2 && element_2_side = "left" {
						if global.opp_locale_1 = noone && global.opp_locale_2 = noone {
							if temp_side < 50 {
								chosen_position = "left_opp";
							} else {
								chosen_position = "left_middle_opp";
							}
						} else if global.opp_locale_2 = noone {
							chosen_position = "left_middle_opp";
						} else if global.opp_locale_1 = noone {
							chosen_position = "left_opp";
						} else if temp_side < 50 {
							if (global.opp_locale_1.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_1.rarity < rarity && global.opp_locale_1.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "left_opp";
								global.opp_locale_1.overwritten = true;
								global.opp_locale_1.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						} else {
							if (global.opp_locale_2.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_2.rarity < rarity && global.opp_locale_2.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "left_middle_opp";
								global.opp_locale_2.overwritten = true;
								global.opp_locale_2.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						}
					} else if element = element_2 && element_2_side = "right" {
						if global.opp_locale_3 = noone && global.opp_locale_4 = noone {
							if temp_side < 50 {
								chosen_position = "right_opp";
							} else {
								chosen_position = "right_middle_opp";
							}
						} else if global.opp_locale_4 = noone {
							chosen_position = "right_opp";
						} else if global.opp_locale_3 = noone {
							chosen_position = "right_middle_opp";
						} else if temp_side < 50 {
							if (global.opp_locale_3.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_3.rarity < rarity && global.opp_locale_3.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "right_middle_opp";
								global.opp_locale_3.overwritten = true;
								global.opp_locale_3.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						} else {
							if (global.opp_locale_4.channel <= global.rarity_list[rarity][element][card_type][3][card_index] && global.opp_locale_4.rarity < rarity && global.opp_locale_4.health_locale < global.rarity_list[rarity][element][card_type][2][card_index]) {
								chosen_position = "right_opp";
								global.opp_locale_4.overwritten = true;
								global.opp_locale_4.health_locale = 0;
							} else {
								pass = true;
								show_debug_message("pass no good spot for locale")
							}
						}
					}
				
					if pass = false {
						alarm[3] = 65;
						array_delete(hand_rarity,hand_choice,1);
						array_delete(hand_card_type,hand_choice,1);
						playing = true;
					}
				}
			}
		}
		if pass = true {
			if attempt = 2 {
				show_debug_message("passing")
			} else {
				show_debug_message("retrying...")
			}
		} else {
			break
		}
	}
}
	
// Decide what to do with priority
if pass = true {
	if global.stack_active = true {
		global.resolve_stack = true;
	} else {
		if global.player.passed = true {
			global.priority = "player";
			global.player_enabled = false;
			global.wait_for_effect = false;
			global.player.passed = false;
			global.phase = "combat";
			combat_phase_seq = layer_sequence_create("effect_layer",1522,754,seq_combat_phase);
			alarm[10] = 100; 
		} else {
			global.opponent.passed = true;
			global.priority = "player";
			global.player_enabled = true;
		}
	}
	deciding = false;
} else {
	if global.stack_active = true {
		global.player.passed = false;
		global.priority = "player";
		global.player_enabled = true;
		deciding = false;
	} 
}

