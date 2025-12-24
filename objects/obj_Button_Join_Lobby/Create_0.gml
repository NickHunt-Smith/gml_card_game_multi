/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

selectAction = function() {		
	if global.lobby_list = noone {
		global.lobby_list = instance_create_depth(x,y-400,layer_get_depth("buttons"),obj_Lobby_List)
	}
	if global.client != noone {
		instance_destroy(global.client);
	}
	if global.server != noone {
		instance_destroy(global.server);
	}
}