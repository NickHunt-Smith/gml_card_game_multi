/// @description Insert description here
// You can write your code in this editor

switch(async_load[?"event_type"]) {
	case "lobby_chat_update":
		var _fromID  = async_load[?"user_id"]
		var _fromName = steam_get_user_persona_name_sync(_fromID)
		if (async_load[?"change_flags"]) {
			if already_spawned = false {
				global.my_id = steam_get_user_steam_id()
				global.other_id = _fromID
				show_debug_message(global.my_id)
				show_debug_message(global.other_id)
				already_spawned = true;
				show_debug_message("Player Joined: " + _fromName)
				var _b = buffer_create(1,buffer_grow,1)
				buffer_write(_b,buffer_u8,NETWORK_PACKETS.START_GAME)
				if random(100) < 50 {
					buffer_write(_b,buffer_string,"opp")
					global.priority = "player"
				} else {
					buffer_write(_b,buffer_string,"player")
					global.priority = "opp"
				}
				steam_net_packet_send(_fromID,_b)
				buffer_delete(_b)
				global.pvp_active = true
				room_goto(PvP)
			}
		}
		break
		
}