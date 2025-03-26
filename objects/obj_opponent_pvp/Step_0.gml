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
				case NETWORK_PACKETS.OPP_PLAYED_CARD:
					var _inString = buffer_read(inbuf,buffer_string);
					_inString = string_split(_inString,",");
					print(_inString)
					chosen_position = _inString[0];
					card_type = _inString[1];
					rarity = _inString[2];
					element = _inString[3];
					card_index = _inString[4];
					target_1 = _inString[5];
					target_2 = _inString[6];
					target_3 = _inString[7];
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