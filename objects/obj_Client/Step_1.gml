/// @description Insert description here
// You can write your code in this editor

if waiting_to_start = true {
	if(steam_net_packet_receive()) {
		var _sender = steam_net_packet_get_sender_id()
		steam_net_packet_get_data(inbuf)
		buffer_seek(inbuf,buffer_seek_start,0)
		var _type = buffer_read(inbuf,buffer_u8)
	
		switch _type {
			case NETWORK_PACKETS.START_GAME:
				global.my_id = steam_get_user_steam_id()
				global.other_id = _sender
				var _inString = buffer_read(inbuf,buffer_string)
				if _inString = "opp" {
					global.priority = "opp"
				} else {
					global.priority = "player"
				}
				waiting_to_start = false;
				alarm[0] = 100;
				global.pvp_active = true
				break
			
			default: 
				show_debug_message("Unknown packet received start game")
				show_debug_message(string(_type))
				break
			
		}
	}
}