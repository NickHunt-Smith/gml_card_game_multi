/// @description Insert description here
// You can write your code in this editor

//if global.priority = "opp" && global.resolve_stack = false && deciding = false && global.end_turn_active = false && global.drafting = false {
//	global.opponent.passed = false;
//	global.player_enabled = false;
//	deciding = true;
//	alarm[2] = 30;
//}
	
if global.priority = "opp" && global.drafting = false {
	if wait_for_opp = true {
		var inbuf = buffer_create(16,buffer_grow,1)
		// Check if opp is done. If they are, then we're both done and we can move on
		if steam_net_packet_receive() {
			var _sender = steam_net_packet_get_sender_id()
			steam_net_packet_get_data(inbuf)
			buffer_seek(inbuf,buffer_seek_start,0)
			var _type = buffer_read(inbuf,buffer_u8)
		
			switch _type {
				case NETWORK_PACKETS.OPP_PASSED:
					if global.stack_active = true {
						if global.spell_stack[array_length(global.spell_stack)-1].opp = true {
							global.priority = "player";
							global.player_enabled = true;
						} else {
							global.resolve_stack = true;
						}
					} else {
						if global.player.passed = true {
							global.priority = "player";
							global.player_enabled = false;
							global.wait_for_effect = false;
							global.end_turn_active = true;
							global.player.passed = false;
						} else {
							global.opponent.passed = true;
							global.priority = "player";
							global.player_enabled = true;
						}
					}
					break
				case NETWORK_PACKETS.OPP_PLAYED_LOCALE:
					var _inString = buffer_read(inbuf,buffer_string);
					_inString = string_split(_inString,",");
					var chosen_position_temp = _inString[0];
					card_type = int64(_inString[1]);
					rarity = int64(_inString[2]);
					element = int64(_inString[3]);
					card_index = int64(_inString[4]);
					var target_1_position = _inString[5];
					var target_2_position = _inString[6];
					var target_3_position = _inString[7];
					
					if chosen_position_temp = "left_player" {
						chosen_position = "left_opp"
						if global.opp_locale_1 != noone {
							global.opp_locale_1.overwritten = true;
							global.opp_locale_1.health_locale = 0;
						}
					} else if chosen_position_temp = "left_middle_player" {
						chosen_position = "left_middle_opp"
						if global.opp_locale_2 != noone {
							global.opp_locale_2.overwritten = true;
							global.opp_locale_2.health_locale = 0;
						}
					} else if chosen_position_temp = "right_middle_player" {
						chosen_position = "right_middle_opp"
						if global.opp_locale_3 != noone {
							global.opp_locale_3.overwritten = true;
							global.opp_locale_3.health_locale = 0;
						}
					} else if chosen_position_temp = "right_player" {
						chosen_position = "right_opp"
						if global.opp_locale_4 != noone {
							global.opp_locale_4.overwritten = true;
							global.opp_locale_4.health_locale = 0;
						}
					}
					
					if target_1_position = "noone" {
						target_1 = noone;
					} else if target_1_position = "left_player" {
						if global.opp_locale_1 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_1;
						}
					} else if target_1_position = "left_middle_player" {
						if global.opp_locale_2 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_2;
						}
					} else if target_1_position = "right_middle_player" {
						if global.opp_locale_3 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_3;
						}
					} else if target_1_position = "right_player" {
						if global.opp_locale_4 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_4;
						}
					} else if target_1_position = "left_opp" {
						if global.player_locale_1 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_1;
						}
					} else if target_1_position = "left_middle_opp" {
						if global.player_locale_2 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_2;
						}
					} else if target_1_position = "right_middle_opp" {
						if global.player_locale_3 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_3;
						}
					} else if target_1_position = "right_opp" {
						if global.player_locale_4 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_4;
						}
					}
					
					if target_2_position = "noone" {
						target_2 = noone;
					} else if target_2_position = "left_player" {
						if global.opp_locale_1 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_1;
						}
					} else if target_2_position = "left_middle_player" {
						if global.opp_locale_2 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_2;
						}
					} else if target_2_position = "right_middle_player" {
						if global.opp_locale_3 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_3;
						}
					} else if target_2_position = "right_player" {
						if global.opp_locale_4 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_4;
						}
					} else if target_2_position = "left_opp" {
						if global.player_locale_1 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_1;
						}
					} else if target_2_position = "left_middle_opp" {
						if global.player_locale_2 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_2;
						}
					} else if target_2_position = "right_middle_opp" {
						if global.player_locale_3 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_3;
						}
					} else if target_2_position = "right_opp" {
						if global.player_locale_4 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_4;
						}
					} 
					
					if target_3_position = "noone" {
						target_3 = noone;
					} else if target_3_position = "left_player" {
						if global.opp_locale_1 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_1;
						}
					} else if target_3_position = "left_middle_player" {
						if global.opp_locale_2 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_2;
						}
					} else if target_3_position = "right_middle_player" {
						if global.opp_locale_3 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_3;
						}
					} else if target_3_position = "right_player" {
						if global.opp_locale_4 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_4;
						}
					} else if target_3_position = "left_opp" {
						if global.player_locale_1 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_1;
						}
					} else if target_3_position = "left_middle_opp" {
						if global.player_locale_2 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_2;
						}
					} else if target_3_position = "right_middle_opp" {
						if global.player_locale_3 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_3;
						}
					} else if target_3_position = "right_opp" {
						if global.player_locale_4 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_4;
						}
					}
					
					wait_for_opp = false;
					alarm[3] = 65;
					var valid_choice = false;
					while valid_choice = false {
						hand_choice = irandom(array_length(hand_rarity)-1);
						if hand_rarity[hand_choice] = rarity && hand_card_type[hand_choice] = card_type {
							valid_choice = true;
						}
					}
					array_delete(hand_rarity,hand_choice,1);
					array_delete(hand_card_type,hand_choice,1);
					playing = true;
					break
				case NETWORK_PACKETS.OPP_PLAYED_SPELL:
					var _inString = buffer_read(inbuf,buffer_string);
					_inString = string_split(_inString,",");
					card_type = int64(_inString[0]);
					rarity = int64(_inString[1]);
					element = int64(_inString[2]);
					card_index = int64(_inString[3]);
					var target_1_position = _inString[4];
					var target_2_position = _inString[5];
					var target_3_position = _inString[6];
					
					if target_1_position = "noone" {
						target_1 = noone;
					} else if target_1_position = "left_player" {
						if global.opp_locale_1 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_1;
						}
					} else if target_1_position = "left_middle_player" {
						if global.opp_locale_2 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_2;
						}
					} else if target_1_position = "right_middle_player" {
						if global.opp_locale_3 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_3;
						}
					} else if target_1_position = "right_player" {
						if global.opp_locale_4 = noone {
							target_1 = "self"
						} else {
							target_1 = global.opp_locale_4;
						}
					} else if target_1_position = "left_opp" {
						if global.player_locale_1 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_1;
						}
					} else if target_1_position = "left_middle_opp" {
						if global.player_locale_2 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_2;
						}
					} else if target_1_position = "right_middle_opp" {
						if global.player_locale_3 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_3;
						}
					} else if target_1_position = "right_opp" {
						if global.player_locale_4 = noone {
							target_1 = "self"
						} else {
							target_1 = global.player_locale_4;
						}
					}
					
					for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
						if target_1_position = "stack" + string(_i) {
							target_1 = global.spell_stack[_i]
						}
					}
					
					if target_2_position = "noone" {
						target_2 = noone;
					} else if target_2_position = "left_player" {
						if global.opp_locale_1 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_1;
						}
					} else if target_2_position = "left_middle_player" {
						if global.opp_locale_2 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_2;
						}
					} else if target_2_position = "right_middle_player" {
						if global.opp_locale_3 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_3;
						}
					} else if target_2_position = "right_player" {
						if global.opp_locale_4 = noone {
							target_2 = "self"
						} else {
							target_2 = global.opp_locale_4;
						}
					} else if target_2_position = "left_opp" {
						if global.player_locale_1 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_1;
						}
					} else if target_2_position = "left_middle_opp" {
						if global.player_locale_2 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_2;
						}
					} else if target_2_position = "right_middle_opp" {
						if global.player_locale_3 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_3;
						}
					} else if target_2_position = "right_opp" {
						if global.player_locale_4 = noone {
							target_2 = "self"
						} else {
							target_2 = global.player_locale_4;
						}
					} else if target_2_position = "left_player_empty" {
						if global.opp_locale_1 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "left_opp";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "left_middle_player_empty" {
						if global.opp_locale_2 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "left_middle_opp";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "right_middle_player_empty" {
						if global.opp_locale_3 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "right_middle_opp";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "right_player_empty" {
						if global.opp_locale_4 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "right_opp";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "left_opp_empty" {
						if global.player_locale_1 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "left_player";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "left_middle_opp_empty" {
						if global.player_locale_2 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "left_middle_player";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "right_middle_opp_empty" {
						if global.player_locale_3 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "right_middle_player";
						} else {
							target_2 = "self";
						}
					} else if target_2_position = "right_opp_empty" {
						if global.player_locale_4 != noone {
							target_2 = instance_create_depth(0,0,0,obj_target_empty);
							target_2.position = "right_player";
						} else {
							target_2 = "self";
						}
					}
					if target_2 != noone {
						show_debug_message(target_2.position)
					}
					
					for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
						if target_2_position = "stack" + string(_i) {
							target_2 = global.spell_stack[_i]
						}
					}
					
					if target_3_position = "noone" {
						target_3 = noone;
					} else if target_3_position = "left_player" {
						if global.opp_locale_1 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_1;
						}
					} else if target_3_position = "left_middle_player" {
						if global.opp_locale_2 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_2;
						}
					} else if target_3_position = "right_middle_player" {
						if global.opp_locale_3 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_3;
						}
					} else if target_3_position = "right_player" {
						if global.opp_locale_4 = noone {
							target_3 = "self"
						} else {
							target_3 = global.opp_locale_4;
						}
					} else if target_3_position = "left_opp" {
						if global.player_locale_1 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_1;
						}
					} else if target_3_position = "left_middle_opp" {
						if global.player_locale_2 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_2;
						}
					} else if target_3_position = "right_middle_opp" {
						if global.player_locale_3 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_3;
						}
					} else if target_3_position = "right_opp" {
						if global.player_locale_4 = noone {
							target_3 = "self"
						} else {
							target_3 = global.player_locale_4;
						}
					}
					
					for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
						if target_3_position = "stack" + string(_i) {
							target_3 = global.spell_stack[_i]
						}
					}
					
					wait_for_opp = false;
					alarm[3] = 65;
					var valid_choice = false;
					//while valid_choice = false {
					//	hand_choice = irandom(array_length(hand_rarity)-1);
					//	if hand_rarity[hand_choice] = rarity && hand_card_type[hand_choice] = card_type {
					//		valid_choice = true;
					//	}
					//}
					
					for (var _i = 0; _i < array_length(hand_rarity); _i++) {
						if hand_rarity[_i] = rarity && hand_card_type[_i] = card_type {
							hand_choice = _i;
							valid_choice = true
							break
						} 
					}
					
					if valid_choice = true {
						array_delete(hand_rarity,hand_choice,1);
						array_delete(hand_card_type,hand_choice,1);
					}
					playing = true;
					break
				default:
					show_debug_message("Unknown packet received opp")
					show_debug_message(string(_type))
					break
			}
		}
	}
}