/// @description Insert description here
// You can write your code in this editor

while(steam_net_packet_receive()) {
	var _sender = steam_net_packet_get_sender_id()
	steam_net_packet_get_data(inbuf)
	buffer_seek(inbuf,buffer_seek_start,0)
	var _type = buffer_read(inbuf,buffer_u8)
	
	switch _type {
		case NETWORK_PACKETS.START_GAME:
			var _inString = buffer_read(inbuf,buffer_string)
			_inString = json_parse(_inString)
			show_debug_message(_inString)
			room_goto(PvP)
			break
			
		default: 
			show_debug_message("Unknown packet received")
			break
			
	}
}