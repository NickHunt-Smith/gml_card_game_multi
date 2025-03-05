/// @description Insert description here
// You can write your code in this editor

if joined = false {
	global.client = instance_create_depth(0,0,0,obj_Client);
	steam_lobby_join_id(lobby_id);
	joined = true;
	room_goto(PvP);
}