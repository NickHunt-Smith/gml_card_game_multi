/// @description Insert description here
// You can write your code in this editor

//if global.priority = "opp" && global.resolve_stack = false && deciding = false && global.end_turn_active = false && global.drafting = false {
//	global.opponent.passed = false;
//	global.player_enabled = false;
//	deciding = true;
//	alarm[2] = 30;
//}
	
if global.priority = "opp" {
	if wait_for_opp = true {
		var inbuf = buffer_create(16,buffer_grow,1)
		// Check if opp is done. If they are, then we're both done and we can move on
		if steam_net_packet_receive() {
			var _sender = steam_net_packet_get_sender_id()
			steam_net_packet_get_data(inbuf)
			buffer_seek(inbuf,buffer_seek_start,0)
			var _type = buffer_read(inbuf,buffer_u8)
		
			switch _type {
				case NETWORK_PACKETS.OPP_PLAYED_LOCALE:
					var _inString = buffer_read(inbuf,buffer_string);
					_inString = string_split(_inString,",");
					show_debug_message(_inString)
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
					} else if chosen_position_temp = "left_middle_player" {
						chosen_position = "left_middle_opp"
					} else if chosen_position_temp = "right_middle_player" {
						chosen_position = "right_middle_opp"
					} else if chosen_position_temp = "right_player" {
						chosen_position = "right_opp"
					}
					
					if target_1_position = "noone" {
						target_1 = noone;
					} else if target_1_position = "left_player" {
						target_1 = global.opp_locale_1;
					} else if target_1_position = "left_middle_player" {
						target_1 = global.opp_locale_2;
					} else if target_1_position = "right_middle_player" {
						target_1 = global.opp_locale_3;
					} else if target_1_position = "right_player" {
						target_1 = global.opp_locale_4;
					} else if target_1_position = "left_opp" {
						target_1 = global.player_locale_1;
					} else if target_1_position = "left_middle_opp" {
						target_1 = global.player_locale_2;
					} else if target_1_position = "right_middle_opp" {
						target_1 = global.player_locale_3;
					} else if target_1_position = "right_opp" {
						target_1 = global.player_locale_4;
					}
					
					if target_1_position = "noone" {
						target_2 = noone;
					} else if target_2_position = "left_player" {
						target_2 = global.opp_locale_1;
					} else if target_2_position = "left_middle_player" {
						target_2 = global.opp_locale_2;
					} else if target_2_position = "right_middle_player" {
						target_2 = global.opp_locale_3;
					} else if target_2_position = "right_player" {
						target_2 = global.opp_locale_4;
					} else if target_2_position = "left_opp" {
						target_2 = global.player_locale_1;
					} else if target_2_position = "left_middle_opp" {
						target_2 = global.player_locale_2;
					} else if target_2_position = "right_middle_opp" {
						target_2 = global.player_locale_3;
					} else if target_2_position = "right_opp" {
						target_2 = global.player_locale_4;
					}
					
					if target_3_position = "noone" {
						target_3 = noone;
					} else if target_3_position = "left_player" {
						target_3 = global.opp_locale_1;
					} else if target_3_position = "left_middle_player" {
						target_3 = global.opp_locale_2;
					} else if target_3_position = "right_middle_player" {
						target_3 = global.opp_locale_3;
					} else if target_3_position = "right_player" {
						target_3 = global.opp_locale_4;
					} else if target_3_position = "left_opp" {
						target_3 = global.player_locale_1;
					} else if target_3_position = "left_middle_opp" {
						target_3 = global.player_locale_2;
					} else if target_3_position = "right_middle_opp" {
						target_3 = global.player_locale_3;
					} else if target_3_position = "right_opp" {
						target_3 = global.player_locale_4;
					}
					
					wait_for_opp = false;
					playing = true;
					alarm[3] = 65;
					break
				default:
					show_debug_message("Unknown packet received")
					break
			}
		}
	}
}