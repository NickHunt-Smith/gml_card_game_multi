
if discard_seq != noone {
	layer_sequence_destroy(discard_seq);
	discard_seq = noone;
}

if pass_priority_discard = true {
	global.priority = "opp";
}

if global.priority = "player" {
	global.player_enabled = true;
}

global.player.discards += 1;

if global.pvp_active = true && opp=false {
	var _b = buffer_create(1,buffer_grow,1)
	buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_DISCARDED)
	var card_details = string(card_type) + "," + string(rarity) + "," + string(element) + "," + string(card_index) 
	buffer_write(_b,buffer_string,card_details)
	steam_net_packet_send(global.other_id,_b)
	buffer_delete(_b)
}

instance_destroy();