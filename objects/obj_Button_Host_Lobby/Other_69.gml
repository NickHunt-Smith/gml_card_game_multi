/// @description Insert description here
// You can write your code in this editor

if listening = true {
	switch(async_load[?"event_type"]) {
		case "lobby_created": 
			show_debug_message("Lobby Created" + string(steam_lobby_get_lobby_id()));
			steam_lobby_join_id(steam_lobby_get_lobby_id());
		
			break
	
		case "lobby_joined":
			listening = false;
			if (steam_lobby_is_owner())
			{
				steam_lobby_set_data("isGameMakerTest","true");
				steam_lobby_set_data("Creator",steam_get_persona_name());
			}
			break

		default:
			show_debug_message("error " + async_load[?"event_type"])
	}
}