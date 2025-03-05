/// @description Insert description here
// You can write your code in this editor

switch(async_load[?"event_type"]) {
	case "lobby_chat_update":
		var _fromID  = async_load[?"user_id"]
		var _fromName = steam_get_user_persona_name_sync(_fromID)
		if (async_load[?"change_flags"] && steam_lobby_member_change_entered) {
			if already_spawned = false {
				already_spawned = true;
				show_debug_message("Player Joined: " + _fromName)
				var _b = buffer_create(1,buffer_grow,1)
				buffer_write(_b,buffer_u8,NETWORK_PACKETS.START_GAME)
				buffer_write(_b,buffer_string,"start_game")
				steam_net_packet_send(_fromID,_b)
				buffer_delete(_b)
				room_goto(PvP)
			}
		}
		break
		
}