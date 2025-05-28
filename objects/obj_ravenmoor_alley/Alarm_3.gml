
if global.pvp_active = false  {
	backstab_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_backstab);
	scr_sequence_target(backstab_seq,target_1,opp,card_state);
	alarm[2] = 55;
} else if global.pvp_active = true && global.is_server = true {
	var _b = buffer_create(1,buffer_grow,1)
	buffer_write(_b,buffer_u8,NETWORK_PACKETS.RANDOM_TARGET) 
	var random_target = string(target_1.position);
	buffer_write(_b,buffer_string,random_target)
	steam_net_packet_send(global.other_id,_b)
	buffer_delete(_b)
	backstab_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_backstab);
	scr_sequence_target(backstab_seq,target_1,opp,card_state);
	alarm[2] = 55;
} else if global.pvp_active = true && global.is_server = false {	
	
	if steam_net_packet_receive() {
		var inbuf = buffer_create(16,buffer_grow,1)
		var _sender = steam_net_packet_get_sender_id()
		steam_net_packet_get_data(inbuf)
		buffer_seek(inbuf,buffer_seek_start,0)
		var _type = buffer_read(inbuf,buffer_u8)
		
		switch _type {
			case NETWORK_PACKETS.RANDOM_TARGET:
				var target_1_position = buffer_read(inbuf,buffer_string);
				
				if target_1_position = "noone" {
					target_1 = noone;
				} else if target_1_position = "left_player" {
					if global.opp_locale_1 = noone {
						target_1 = "self"
					} else {
						target_1 = global.opp_locale_1;
					}
				} else if target_1_position = "left_middle_player" {
					if global.opp_locale_2 = noone {
						target_1 = "self"
					} else {
						target_1 = global.opp_locale_2;
					}
				} else if target_1_position = "right_middle_player" {
					if global.opp_locale_3 = noone {
						target_1 = "self"
					} else {
						target_1 = global.opp_locale_3;
					}
				} else if target_1_position = "right_player" {
					if global.opp_locale_4 = noone {
						target_1 = "self"
					} else {
						target_1 = global.opp_locale_4;
					}
				} else if target_1_position = "left_opp" {
					if global.player_locale_1 = noone {
						target_1 = "self"
					} else {
						target_1 = global.player_locale_1;
					}
				} else if target_1_position = "left_middle_opp" {
					if global.player_locale_2 = noone {
						target_1 = "self"
					} else {
						target_1 = global.player_locale_2;
					}
				} else if target_1_position = "right_middle_opp" {
					if global.player_locale_3 = noone {
						target_1 = "self"
					} else {
						target_1 = global.player_locale_3;
					}
				} else if target_1_position = "right_opp" {
					if global.player_locale_4 = noone {
						target_1 = "self"
					} else {
						target_1 = global.player_locale_4;
					}
				}
				backstab_seq = layer_sequence_create("effect_layer",x+112,y+184,seq_backstab);
				scr_sequence_target(backstab_seq,target_1,opp,card_state);
				alarm[2] = 55;
				break
			default:
				alarm[3] = 1;
				show_debug_message("Unknown packet alley")
				show_debug_message(string(_type))
				break
		}
	} else {
		alarm[3] = 1;
	}
}


