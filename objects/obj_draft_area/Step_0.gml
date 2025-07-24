/// @description Insert description here
// You can write your code in this editor


if global.drafting = false && only_draft_area = false {
	global.drafting = true;
	global.player_enabled = false;
	only_draft_area = true;
}

if rarities_types_chosen = false && only_draft_area = true {
	
	if (global.pvp_active = true && global.is_server = true) or global.pvp_active = false or rarity_locked = true {
		for (var _i = 0; _i < draft_count; _i++) {
			var rarity = 0;
			if global.turn_count < 1 {
				var rarity_dist = [70,95,100,100,100];
			} else if global.turn_count >= 1 && global.turn_count < 2 {
				var rarity_dist = [50,80,95,100,100];
			} else if global.turn_count >= 2 && global.turn_count < 4 {
				var rarity_dist = [40,67,85,95,100];
			} else if global.turn_count >= 4 && global.turn_count < 6 {
				var rarity_dist = [32,55,73,90,100];
			} else if global.turn_count >= 6 && global.turn_count < 8 {
				var rarity_dist = [24,46,67,86,100];
			} else if global.turn_count >= 8 {
				var rarity_dist = [20,40,60,80,100];
			}
		
			var temp = random(100);
			if temp < rarity_dist[0] {
				rarity = 0;
			} else if temp >= rarity_dist[0] && temp < rarity_dist[1] {
				rarity = 1;
			} else if temp >= rarity_dist[1] && temp < rarity_dist[2] {
				rarity = 2;
			} else if temp >= rarity_dist[2] && temp < rarity_dist[3] {
				rarity = 3;
			} else if temp >= rarity_dist[3] && temp <= rarity_dist[4] {
				rarity = 4;
			}
		
			array_push(random_rarities,rarity);
		
			var card_type = 0;
			if (scr_check_if_targets("opp") = false && scr_check_if_targets("player") = false) && (global.opponent.common_locales + global.opponent.uncommon_locales + global.opponent.rare_locales + global.opponent.mythic_locales + global.opponent.legendary_locales = 0) {
				card_type = 0;
			} else {
				var card_type_dist = [50,100];
				var player_locales = 0;
				var opp_locales = 0;
				if global.player_locale_1 != noone {
					player_locales += 1;
				}
				if global.player_locale_2 != noone {
					player_locales += 1;
				}
				if global.player_locale_3 != noone {
					player_locales += 1;
				}
				if global.player_locale_4 != noone {
					player_locales += 1;
				}
				if global.opp_locale_1 != noone {
					opp_locales += 1;
				}
				if global.opp_locale_2 != noone {
					opp_locales += 1;
				}
				if global.opp_locale_3 != noone {
					opp_locales += 1;
				}
				if global.opp_locale_4 != noone {
					opp_locales += 1;
				}
				if player_locales >= 3 && opp_locales >= 3 {
					card_type_dist = [30,70];
				} else if player_locales <= 1 && opp_locales <= 1 {
					card_type_dist = [70,30];
				}
				var temp = random(100);
				if temp < card_type_dist[0] {
					card_type = 0;
				} else if temp >= card_type_dist[0] && temp < card_type_dist[1] {
					card_type = 1;
				} 
			}
		
			array_push(random_card_types,card_type);
		
			rarities_types_chosen = true;
		}
		
		if draft_count = 3 && global.turn_count > 1 {
			if random_card_types[0] = 0 && random_card_types[1] = 0 {
				random_card_types[2] = 1;
			} else if random_card_types[0] = 1 && random_card_types[1] = 1 {
				random_card_types[2] = 0;
			}
		}
		
		if global.pvp_active = true && global.is_server = true && rarity_locked = false {
			var _b = buffer_create(1,buffer_grow,1)
			buffer_write(_b,buffer_u8,NETWORK_PACKETS.DRAFTING) 
			var rarities_types = "";
			for (var _i = 0; _i < draft_count; _i++) {
				rarities_types = rarities_types + string(random_rarities[_i]) + ","
			}
			for (var _i = 0; _i < draft_count; _i++) {
				rarities_types = rarities_types + string(random_card_types[_i]) + ","
			}
			buffer_write(_b,buffer_string,rarities_types)
			steam_net_packet_send(global.other_id,_b)
			buffer_delete(_b)
		}
		
		var sound_inst = audio_play_sound(snd_draft,10,false);

		summon_whirlpool_1 = part_system_create(Ps_Portal_Spiral_Blue);
		part_system_position(summon_whirlpool_1, 1150, 290);
		part_system_depth(summon_whirlpool_1,-900);

		summon_whirlpool_2 = part_system_create(Ps_Portal_Spiral_Blue);
		part_system_position(summon_whirlpool_2, 1520, 290);
		part_system_depth(summon_whirlpool_2,-900);

		summon_whirlpool_3 = part_system_create(Ps_Portal_Spiral_Blue);
		part_system_position(summon_whirlpool_3, 1890, 290);
		part_system_depth(summon_whirlpool_3,-900);

		sparkle_rain = part_system_create(Ps_Magic_Sparkle_Rain_Long);
		part_system_position(sparkle_rain, 1520, 5);
		part_system_depth(sparkle_rain,-900);

		shooting_stars = part_system_create(Ps_Shooting_Stars);
		part_system_position(shooting_stars, 1520, 250);
		part_system_depth(shooting_stars,-900);
	} else if (global.pvp_active = true && global.is_server = false) && rarity_locked = false {
		if steam_net_packet_receive() {
			var inbuf = buffer_create(16,buffer_grow,1)
			var _sender = steam_net_packet_get_sender_id()
			steam_net_packet_get_data(inbuf)
			buffer_seek(inbuf,buffer_seek_start,0)
			var _type = buffer_read(inbuf,buffer_u8)
		
			switch _type {
				case NETWORK_PACKETS.DRAFTING:
					var _inString = buffer_read(inbuf,buffer_string);
					_inString = string_split(_inString,",");
					for (var _i = 0; _i < draft_count; _i++) {
						array_push(random_rarities,int64(_inString[_i]))
					}
					for (var _i = 0; _i < draft_count; _i++) {
						array_push(random_card_types,int64(_inString[_i+draft_count]))
					}
					rarities_types_chosen = true;
					
					var sound_inst = audio_play_sound(snd_draft,10,false);

					summon_whirlpool_1 = part_system_create(Ps_Portal_Spiral_Blue);
					part_system_position(summon_whirlpool_1, 1150, 290);
					part_system_depth(summon_whirlpool_1,-900);

					summon_whirlpool_2 = part_system_create(Ps_Portal_Spiral_Blue);
					part_system_position(summon_whirlpool_2, 1520, 290);
					part_system_depth(summon_whirlpool_2,-900);

					summon_whirlpool_3 = part_system_create(Ps_Portal_Spiral_Blue);
					part_system_position(summon_whirlpool_3, 1890, 290);
					part_system_depth(summon_whirlpool_3,-900);

					sparkle_rain = part_system_create(Ps_Magic_Sparkle_Rain_Long);
					part_system_position(sparkle_rain, 1520, 5);
					part_system_depth(sparkle_rain,-900);

					shooting_stars = part_system_create(Ps_Shooting_Stars);
					part_system_position(shooting_stars, 1520, 250);
					part_system_depth(shooting_stars,-900);
					break
				default:
					show_debug_message("Unknown packet received draft")
					show_debug_message(string(_type))
					break
			}
		}
	}
}
	
if global.pvp_active = false or rarities_types_chosen = true {
	
	image_alpha = lerp(image_alpha, 1, 0.09);

	if (summon_cards = true) && debug_test = true {
		
		global.drafting = true;
		global.player_enabled = false;
	
		var card_inst = noone;
	
		var rarity = 2;
		var element = 2;
		var card_type = 0;
		var card_index = 0;
		var order = 0;
	
		card_inst_1 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
		var rarity = 2;
		var element = 2;
		var card_type = 0;
		var card_index = 1;
		var order = 1;
		card_inst_2 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
		var rarity = 2;
		var element = 2;
		var card_type = 0;
		var card_index = 2;
		var order = 2;
		card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
		summon_cards = false;
	}


	if (summon_cards = true) && debug_test = false {
		if draft_count > 2 {
			reroll_active = true;
			global.rerolls_available += 1;
		}
		button_draw = true;
	
		var card_inst = noone;
	
		var rarity = 0;
		if rarity_locked = true {
			rarity = rarity_locked_i;
		} else {
			rarity = random_rarities[0];
			array_delete(random_rarities,0,1);
		}
	
		var card_type = 0;
		if card_type_locked = true {
			card_type = card_type_locked_i;
		} else {
			card_type = random_card_types[0];
			array_delete(random_card_types,0,1);
		}
	
		var element = 0;
		if element_locked = true {
			element = element_locked_i;
		} else {
			element = scr_choose_element();
			//var debug_dist = [0,0,0,0,0,0,0,0];
			//for (var _i = 0; _i < 10000; _i++) {
			//	element = scr_choose_element();
				//debug_dist[element] += 1;
			//}
			//show_debug_message(debug_dist);
		}
	
		var card_index_dist = [0];
		for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
			array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
		}
		var card_index = 0;
		var temp = random(100);
		for (var _i = 0; _i < array_length(card_index_dist); _i++) {
			if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
				card_index = _i;
			}
		}
	
		var order = 0;
	
		card_inst_1 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
		var element = 0;
		if element_locked = true {
			element = element_locked_i;
		} else {
			element = scr_choose_element();
		}
	
		var card_index_dist = [0];
		for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
			array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
		}
		var card_index = 0;
		while element = card_inst_1.element && card_index = card_inst_1.card_index {
			temp = random(100);
			for (var _i = 0; _i < array_length(card_index_dist); _i++) {
				if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
					card_index = _i;
				}
			}
		}
	
		var order = 1;
	
		card_inst_2 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
		var element = 0;
		if element_locked = true {
			element = element_locked_i;
		} else {
			element = scr_choose_element();
		}
	
		var card_index_dist = [0];
		for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
			array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
		}
		var card_index = 0;
		while (element = card_inst_1.element && card_index = card_inst_1.card_index) or (element = card_inst_2.element && card_index = card_inst_2.card_index){
			temp = random(100);
			for (var _i = 0; _i < array_length(card_index_dist); _i++) {
				if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
					card_index = _i;
				}
			}
		}
	
		var order = 2;
		
		// debug
		if draft_count = 3 {
			rarity = 4;
			element = 0;
			card_type = 0;
			card_index = 1;
		} else if draft_count = 2 {
			rarity = 1;
			element = 3;
			card_type = 1;
			card_index = 1;
		} else if draft_count = 1 {
			rarity = 1;
			element = 3;
			card_type = 0;
			card_index = 1;
		}
	
		card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
		if card_type_locked = false {
			array_push(global.opponent.hand_rarity,rarity);
			array_push(global.opponent.hand_card_type,card_type);
		}
	
		summon_cards = false;
	}

	if (emit_destroy = true) && syncing = false {
		if (card_inst_1.draft_mode = false) or (card_inst_2.draft_mode = false) or (card_inst_3.draft_mode = false) {
			draft_count -= 1;
		
			if card_inst_1.draft_mode = true {
				instance_destroy(card_inst_1.created_eff);
				instance_destroy(card_inst_1);
			} 
			if card_inst_2.draft_mode = true {
				instance_destroy(card_inst_2.created_eff);
				instance_destroy(card_inst_2);
			} 
			if card_inst_3.draft_mode = true {
				instance_destroy(card_inst_3.created_eff);
				instance_destroy(card_inst_3);
			} 
		
			if (draft_count = 0) {
				button_draw = false;
				reroll_active = false;
				global.draft_area_visible = false;
				alarm[1] = 1;
				syncing = true;
			} else {
				summon_cards = true;
			}
		}
	} else if (emit_destroy = false) {
		image_alpha = clamp(image_alpha-0.09,0,1);
	}
}