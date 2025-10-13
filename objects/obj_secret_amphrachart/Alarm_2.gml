
if global.pvp_active = false  {
	alarm[1] = 10;
} else if global.pvp_active = true && opp = false {
	var _b = buffer_create(1,buffer_grow,1)
	buffer_write(_b,buffer_u8,NETWORK_PACKETS.SEND_REROLLS) 
	buffer_write(_b,buffer_string,string(global.rerolls_used))
	steam_net_packet_send(global.other_id,_b)
	buffer_delete(_b)
	alarm[1] = 10;
} else if global.pvp_active = true && opp = true {	
	
	if steam_net_packet_receive() {
		var inbuf = buffer_create(16,buffer_grow,1)
		var _sender = steam_net_packet_get_sender_id()
		steam_net_packet_get_data(inbuf)
		buffer_seek(inbuf,buffer_seek_start,0)
		var _type = buffer_read(inbuf,buffer_u8)
		
		switch _type {
			case NETWORK_PACKETS.SEND_REROLLS:
				rerolls_used = int64(buffer_read(inbuf,buffer_string));
				alarm[1] = 10;
				break
			default:
				alarm[2] = 1;
				show_debug_message("Unknown packet chart")
				show_debug_message(string(_type))
				break
		}
	} else {
		alarm[2] = 1;
	}
}
