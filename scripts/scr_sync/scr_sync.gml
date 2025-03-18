// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sync_draft() {
	var opp_done = false
	// Check if opp is done. If they are, then we're both done and we can move on
	if steam_net_packet_receive() {
		var _sender = steam_net_packet_get_sender_id()
		steam_net_packet_get_data(inbuf)
		buffer_seek(inbuf,buffer_seek_start,0)
		var _type = buffer_read(inbuf,buffer_u8)
		
		switch _type {
			case NETWORK_PACKETS.SYNC_DRAFT:
				opp_done = true
				break
			default:
				show_debug_message("Unknown packet received")
				break
		}
	}
	
	
	// Either way, send message saying I'm done
	var _b = buffer_create(1,buffer_grow,1)
	buffer_write(_b,buffer_u8,NETWORK_PACKETS.SYNC_DRAFT)
	buffer_write(_b,buffer_string,"draft_done")
	steam_net_packet_send(global.other_id,_b)
	buffer_delete(_b)
	
	if opp_done = true {
		return true
	} else {
		return false
	}
}