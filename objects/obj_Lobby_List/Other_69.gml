/// @description Insert description here
// You can write your code in this editor

switch(async_load[?"event_type"]) {
	case "lobby_list":
		resetLobbyList()
		if steam_lobby_list_get_count() == 0 {
			lobbyList[0] = instance_create_depth(x,bbox_top + 40,depth-20,obj_Lobby_Item)
		} else {
			for (var _i = 0; _i < steam_lobby_list_get_count(); _i++) {
				var _ins = instance_create_depth(x,bbox_top + 40 + 80*_i,depth-20,obj_Lobby_Item,	{
					lobby_index : _i,
					lobby_id : steam_lobby_list_get_lobby_id(_i),
					lobby_creator : steam_get_user_persona_name_sync(steam_lobby_list_get_lobby_owner_id(_i))
				})
				array_push(lobbyList,_ins);
			}
		}
		break
		
}