/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

selectAction = function() {
	if global.server = noone {
		text = "Waiting...";
		global.server = instance_create_depth(0,0,0,obj_Server);
		created = steam_lobby_create(steam_lobby_type_public,2);
	}
	if global.client != noone {
		instance_destroy(global.client);
	}
	if global.lobby_list != noone {
		instance_destroy(global.lobby_list);
	}
}