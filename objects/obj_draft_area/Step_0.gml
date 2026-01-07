/// @description Insert description here
// You can write your code in this editor


if global.drafting = false && only_draft_area = false {
	global.drafting = true;
	global.player_enabled = false;
	only_draft_area = true;
	if new_turn = true {
		global.phase = "scry";
		scry_phase_seq = layer_sequence_create("effect_layer",1522,754,seq_scry_phase);
		alarm[3] = 100;
	}
}

if rarities_types_chosen = false && only_draft_area = true && scry_phase_seq = noone {
	
	if global.encounter_level = 0 {
		global.rarity_dist = [100,100,100,100,100];
	} else if global.encounter_level = 1 {
		if global.turn_count < 1 {
			global.rarity_dist = [95,100,100,100,100];
		} else if global.turn_count >= 1 && global.turn_count < 2 {
			global.rarity_dist = [80,100,100,100,100];
		} else if global.turn_count >= 2 && global.turn_count < 4 {
			global.rarity_dist = [65,100,100,100,100];
		} else if global.turn_count >= 4 {
			global.rarity_dist = [50,100,100,100,100];
		}
	} else if global.encounter_level = 4 {
		if global.turn_count < 1 {
			global.rarity_dist = [90,100,100,100,100];
		} else if global.turn_count >= 1 && global.turn_count < 2 {
			global.rarity_dist = [75,95,100,100,100];
		} else if global.turn_count >= 2 && global.turn_count < 3 {
			global.rarity_dist = [55,85,100,100,100];
		} else if global.turn_count >= 3 && global.turn_count < 4 {
			global.rarity_dist = [45,78,98,100,100];
		} else if global.turn_count >= 4 && global.turn_count < 5 {
			global.rarity_dist = [30,70,95,100,100];
		} else if global.turn_count >= 5 && global.turn_count < 6 {
			global.rarity_dist = [19,49,89,99,100];
		} else if global.turn_count >= 6 && global.turn_count < 7 {
			global.rarity_dist = [17,41,73,97,100];
		} else if global.turn_count >= 7 && global.turn_count < 8 {
			global.rarity_dist = [15,33,58,88,100];
		} else if global.turn_count >= 8 && global.turn_count < 9 {
			global.rarity_dist = [5,15,35,75,100];
		} else if global.turn_count >= 9 {
			global.rarity_dist = [1,3,15,65,100];
		}
	}
	
	if (global.pvp_active = true && global.is_server = true) or global.pvp_active = false or rarity_locked = true {
		for (var _i = 0; _i < draft_count; _i++) {
			var rarity = 0;
		
			var temp = random(100);
			if temp < global.rarity_dist[0] {
				rarity = 0;
			} else if temp >= global.rarity_dist[0] && temp < global.rarity_dist[1] {
				rarity = 1;
			} else if temp >= global.rarity_dist[1] && temp < global.rarity_dist[2] {
				rarity = 2;
			} else if temp >= global.rarity_dist[2] && temp < global.rarity_dist[3] {
				rarity = 3;
			} else if temp >= global.rarity_dist[3] && temp <= global.rarity_dist[4] {
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
		
		//var sound_inst = audio_play_sound(snd_draft,10,false);
		
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
					
					//var sound_inst = audio_play_sound(snd_draft,10,false);

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

					break
				default:
					show_debug_message("Unknown packet received draft")
					show_debug_message(string(_type))
					break
			}
		}
	}
}
	
if (global.pvp_active = false or rarities_types_chosen = true) && scry_phase_seq = noone {
	
	image_alpha = lerp(image_alpha, 1, 0.09);


	if (summon_cards = true) {
		if draft_count > 2 {
			reroll_active = true;
			global.rerolls_available += 1;
		}
		button_draw = true;
	
		var card_inst = noone;
		
		if global.tutorial = true {
			var rarity = 0;
			var element = 0;
			var card_type = 0;
			var card_index = 0;
			if global.tutorial_step = 2 {
				rarity = 0;
				element = 4;
				card_type = 0;
				card_index = 2;
			} else if global.tutorial_step = 44 {
				rarity = 0;
				element = 3;
				card_type = 1;
				card_index = 0;
			} else if global.tutorial_step = 52 {
				rarity = 0;
				element = 3;
				card_type = 0;
				card_index = 0;
			} else if global.tutorial_step = 82 {
				rarity = 0;
				element = 3;
				card_type = 1;
				card_index = 1;
			} else if global.tutorial_step = 83 {
				rarity = 0;
				element = 3;
				card_type = 0;
				card_index = 0;
			} else if global.tutorial_step = 84 {
				rarity = 0;
				element = 3;
				card_type = 1;
				card_index = 0;
			}
			
			if scry_sequence != noone {
				layer_sequence_destroy(scry_sequence);
				scry_sequence = noone;
			}
			scry_sequence = layer_sequence_create("above_cards",x+15,y+140,seq_scry_common);
			if shooting_stars != noone {
				part_system_destroy(shooting_stars);
				shooting_stars = noone;
			}
			shooting_stars = part_system_create(Ps_Shooting_Stars_common);
			part_system_position(shooting_stars, 1520, 200);
			part_system_depth(shooting_stars,-900);
			alarm[2] = 150;
			
			var order = 0;
			card_inst_1 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst);
			order = 1;
			card_inst_2 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst);
			order = 2;
			card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst);
			
			array_push(global.opponent.hand_rarity,rarity);
			array_push(global.opponent.hand_card_type,card_type);
			
		} else {
	
			var rarity = 0;
			if rarity_locked = true {
				rarity = rarity_locked_i;
			} else {
				rarity = random_rarities[0];
				array_delete(random_rarities,0,1);
			}
		
			if global.next_scry_legendary = true {
				global.next_scry_legendary = false;
				rarity = 4;
			}
		
			if global.scrys_boosted = true && rarity < 4 {
				rarity += 1;
			}
			
			var rarity_opp = rarity;
			while array_contains(global.rarity_avail,rarity) = false {
				rarity -= 1;
			}
			
			if rarity = 0 {
				if scry_sequence != noone {
					layer_sequence_destroy(scry_sequence);
					scry_sequence = noone;
				}
				scry_sequence = layer_sequence_create("above_cards",x+15,y+140,seq_scry_common);
				if shooting_stars != noone {
					part_system_destroy(shooting_stars);
					shooting_stars = noone;
				}
				shooting_stars = part_system_create(Ps_Shooting_Stars_common);
				part_system_position(shooting_stars, 1520, 200);
				part_system_depth(shooting_stars,-900);
			} else if rarity = 1 {
				if scry_sequence != noone {
					layer_sequence_destroy(scry_sequence);
					scry_sequence = noone;
				}
				scry_sequence = layer_sequence_create("above_cards",x+15,y+140,seq_scry_uncommon);
				if shooting_stars != noone {
					part_system_destroy(shooting_stars);
					shooting_stars = noone;
				}
				shooting_stars = part_system_create(Ps_Shooting_Stars_uncommon);
				part_system_position(shooting_stars, 1520, 200);
				part_system_depth(shooting_stars,-900);
			} else if rarity = 2 {
				if scry_sequence != noone {
					layer_sequence_destroy(scry_sequence);
					scry_sequence = noone;
				}
				scry_sequence = layer_sequence_create("above_cards",x+15,y+140,seq_scry_rare);
				if shooting_stars != noone {
					part_system_destroy(shooting_stars);
					shooting_stars = noone;
				}
				shooting_stars = part_system_create(Ps_Shooting_Stars_rare);
				part_system_position(shooting_stars, 1520, 200);
				part_system_depth(shooting_stars,-900);
			} else if rarity = 3 {
				if scry_sequence != noone {
					layer_sequence_destroy(scry_sequence);
					scry_sequence = noone;
				}
				scry_sequence = layer_sequence_create("above_cards",x+15,y+140,seq_scry_mythic);
				if shooting_stars != noone {
					part_system_destroy(shooting_stars);
					shooting_stars = noone;
				}
				shooting_stars = part_system_create(Ps_Shooting_Stars_mythic);
				part_system_position(shooting_stars, 1520, 200);
				part_system_depth(shooting_stars,-900);
			} else if rarity = 4 {
				if scry_sequence != noone {
					layer_sequence_destroy(scry_sequence);
					scry_sequence = noone;
				}
				scry_sequence = layer_sequence_create("above_cards",x+15,y+140,seq_scry_legendary);
				if shooting_stars != noone {
					part_system_destroy(shooting_stars);
					shooting_stars = noone;
				}
				shooting_stars = part_system_create(Ps_Shooting_Stars_legendary);
				part_system_position(shooting_stars, 1520, 200);
				part_system_depth(shooting_stars,-900);
			}
			rarity_current = rarity;
			rarity_alpha = 0;
			alarm[2] = 150;
	
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
			}
	
			var card_index_dist = [0];
			var card_index_avail = global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(card_type)];
			for (var _i = 0; _i < array_length(card_index_avail); _i++) {
				array_push(card_index_dist,(_i+1)*100/array_length(card_index_avail));
			}
			//for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
			//	array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
			//}
			var card_index = 0;
			var temp = random(100);
			for (var _i = 0; _i < array_length(card_index_dist); _i++) {
				if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
					card_index = card_index_avail[_i];
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
			var card_index_avail = global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(card_type)];
			for (var _i = 0; _i < array_length(card_index_avail); _i++) {
				array_push(card_index_dist,(_i+1)*100/array_length(card_index_avail));
			}
			//for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
			//	array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
			//}
			var card_index = 0;
			var temp = random(100);
			for (var _i = 0; _i < array_length(card_index_dist); _i++) {
				if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
					card_index = card_index_avail[_i];
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
			var card_index_avail = global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(card_type)];
			for (var _i = 0; _i < array_length(card_index_avail); _i++) {
				array_push(card_index_dist,(_i+1)*100/array_length(card_index_avail));
			}
			//for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
			//	array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
			//}
			var card_index = 0;
			var temp = random(100);
			for (var _i = 0; _i < array_length(card_index_dist); _i++) {
				if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
					card_index = card_index_avail[_i];
				}
			}
	
			var order = 2;
		
			// debug
			if draft_count = 3 {
				rarity = 2;
				element = 1;
				card_type = 0;
				card_index = 1;
			} else if draft_count = 2 {
				rarity = 2;
				element = 2;
				card_type = 1;
				card_index = 2;
			} else if draft_count = 1 {
				rarity = 0;
				element = 7;
				card_type = 0;
				card_index = 1;
			}
	
			card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst);
	
			if card_type_locked = false {
				array_push(global.opponent.hand_rarity,rarity_opp);
				array_push(global.opponent.hand_card_type,card_type);
			}
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