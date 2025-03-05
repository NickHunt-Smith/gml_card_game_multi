/// @description Insert description here
// You can write your code in this editor

lobbyList = []

image_xscale = xScale
image_yscale = yScale

lobbyList[0] = instance_create_depth(x,bbox_top + 40,-20,obj_Lobby_Item)

steam_lobby_list_add_string_filter("isGameMakerTest","true",steam_lobby_list_filter_eq)
steam_lobby_list_request()

resetLobbyList = function() {
	for (var _i = 0; _i < array_length(lobbyList); _i++) {
		show_debug_message("Deleting: " + string(lobbyList[_i]));
		instance_destroy(lobbyList[_i]);
	}
	lobbyList = [];
}