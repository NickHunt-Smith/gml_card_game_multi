/// @description Insert description here
// You can write your code in this editor

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
}

if global.pvp_active = true && opp=false {
	var _b = buffer_create(1,buffer_grow,1)
	buffer_write(_b,buffer_u8,NETWORK_PACKETS.OPP_PLAYED_LOCALE)
	var card_details = string(card_state.position) + "," + string(card_state.card_type) + "," + string(card_state.rarity) + "," + string(card_state.element) + "," + string(card_state.card_index) 
	if target_1 = noone {
		card_details = card_details + ",noone";
	} else {
		card_details = card_details + "," + string(target_1.position);
	}
	if target_2 = noone {
		card_details = card_details + ",noone";
	} else {
		card_details = card_details + "," + string(target_2.position);
	}
	if target_3 = noone {
		card_details = card_details + ",noone";
	} else {
		card_details = card_details + "," + string(target_3.position);
	}
	buffer_write(_b,buffer_string,card_details)
	steam_net_packet_send(global.other_id,_b)
	buffer_delete(_b)
}

instance_destroy();