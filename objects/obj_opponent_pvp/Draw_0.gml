/// @description Insert description here
// You can write your code in this editor

if playing = true {
	if card_type = 1 {
		if initial_draw = true {
			sprite_index = global.rarity_list[rarity][element][1][0][card_index];
			x = 1521;
			y = 434;
			initial_draw = false;
		}
		
		if play_element_seq = noone {
			if element = 0 {
				play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_ruby);
			} else if element = 1 {
				play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_pearl);
			} else if element = 2 {
				play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_onyx);
			}
			alpha = 0;
		}
		draw_sprite_general(global.rarity_list[rarity][element][1][1][card_index],0,60,67,330,443,x-164,y-222,play_scale,play_scale,0,c_white,c_white,c_white,c_white,1);
	
		sprite_gap = clamp(sprite_gap + 7,0,3*sprite_height/4);
		if sprite_gap < sprite_height/2 {
			draw_sprite_general(sprite_index,0,0,0,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y-sprite_height/2,1,1,0,c_white,c_white,c_white,c_white,1);
			draw_sprite_general(sprite_index,0,0,sprite_height/2+sprite_gap,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y+sprite_gap,1,1,0,c_white,c_white,c_white,c_white,1);
		}
	
		if sprite_gap = 3*sprite_height/4 {
			play_scale = clamp(play_scale - 0.1,0.37,1);
			x = lerp(x, 1527 - 140*(array_length(global.spell_stack)+1 - 1) +70*(array_length(global.spell_stack))+145, 0.3);
			y = lerp(y, y_stack+165, 0.3);
			//x = lerp(x,locale_lane_x+164,0.3);
			//y = lerp(y,locale_lane_y+222,0.3);
			layer_sequence_xscale(play_element_seq,play_scale);
			layer_sequence_yscale(play_element_seq,play_scale);
			layer_sequence_x(play_element_seq,x-(1-play_scale)*164);
			layer_sequence_y(play_element_seq,y-(1-play_scale)*222);
		}
	} else {
		if initial_draw = true {
			sprite_index = global.rarity_list[rarity][element][0][0][card_index];
			if chosen_position = "left_opp" {
				locale_lane_x = 1018;
			} else if chosen_position = "left_middle_opp" {
				locale_lane_x = 1283;
			} else if chosen_position = "right_middle_opp" {
				locale_lane_x = 1545;
			} else if chosen_position = "right_opp" {
				locale_lane_x = 1805;
			} 
			locale_lane_y = 301;
			x = locale_lane_x+120;
			y = locale_lane_y + 400;
			initial_draw = false;
			x_accel = 0;
			y_accel = 0;
		}
	
		if play_element_seq = noone {
			if element = 0 {
				play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_ruby);
			} else if element = 1 {
				play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_pearl);
			} else if element = 2 {
				play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_onyx);
			}
			alpha = 0;
		}
		draw_sprite_general(global.rarity_list[rarity][element][0][1][card_index],0,60,67,330,443,x-164,y-222,play_scale,play_scale,0,c_white,c_white,c_white,c_white,1);
	
		if sprite_gap > sprite_height/2 {
			alpha = clamp(alpha + 0.1,0,1);
			var channel = global.rarity_list[rarity][element][0][3][card_index];
			var health_locale = global.rarity_list[rarity][element][0][2][card_index];
			draw_sprite_ext(s_locale_stats,0,x-164,y-222+293*(play_scale_stats+0.5),0.68*(play_scale_stats+0.5),0.68*(play_scale_stats+0.5),0,c_white,alpha)
			draw_sprite_ext(global.element_sprite_list[element],0,x-164-5*(play_scale_stats+0.5),y-222+308*(play_scale_stats+0.5),0.08*(play_scale_stats+0.5),0.08*(play_scale_stats+0.5),0,c_white,alpha)
			if channel > 9 {
				draw_text_ext_transformed_color(x-164+55*(play_scale_stats+0.5),y-222 + 309*(play_scale_stats+0.5),channel,20,200,0.7*(play_scale_stats+0.5),1*(play_scale_stats+0.5),0,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
			} else {
				draw_text_colour(x-164+55*(play_scale_stats+0.5),y-222 + 328*(play_scale_stats+0.5),channel,c_maroon,c_maroon,c_maroon,c_maroon,alpha);
			}
			draw_set_font(Empower_font)
			if health_locale > 9 {
				draw_text_ext_transformed_color(x-164+203*(play_scale_stats+0.5),y-222 + 309*(play_scale_stats+0.5),health_locale,20,200,0.7*(play_scale_stats+0.5),1*(play_scale_stats+0.5),0,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
			} else {
				draw_text_colour(x-164+203*(play_scale_stats+0.5),y-222 + 328*(play_scale_stats+0.5),health_locale,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
			}
			draw_sprite_ext(s_strength_logo,0,x-164+168*(play_scale_stats+0.5),y-222+328*(play_scale_stats+0.5),0.17*(play_scale_stats+0.5),0.17*(play_scale_stats+0.5),0,c_white,alpha)
			draw_sprite_ext(global.rarity_gem_list[rarity],0,x-164+84*(play_scale_stats+0.5),y-222+299*(play_scale_stats+0.5),0.18*(play_scale_stats+0.5),0.18*(play_scale_stats+0.5),0,c_white,alpha)
		}
	
		sprite_gap = clamp(sprite_gap + 7,0,3*sprite_height/4);
		if sprite_gap < sprite_height/2 {
			draw_sprite_general(sprite_index,0,0,0,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y-sprite_height/2,1,1,0,c_white,c_white,c_white,c_white,1);
			draw_sprite_general(sprite_index,0,0,sprite_height/2+sprite_gap,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y+sprite_gap,1,1,0,c_white,c_white,c_white,c_white,1);
		}
	
		if sprite_gap = 3*sprite_height/4 {
			play_scale = clamp(play_scale - 0.03,0.67,1);
			play_scale_stats = clamp(play_scale_stats - 0.06,0.5,1);
			x = lerp(x,locale_lane_x+164,0.3);
			y = lerp(y,locale_lane_y+222,0.3);
			layer_sequence_xscale(play_element_seq,play_scale);
			layer_sequence_yscale(play_element_seq,play_scale);
			layer_sequence_x(play_element_seq,x-(1-play_scale)*164);
			layer_sequence_y(play_element_seq,y-(1-play_scale)*222);
		}
	
		//sprite_gap = clamp(sprite_gap + 7,0,sprite_height/2);
		//draw_sprite_general(sprite_index,0,0,0,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y-sprite_height/2,1,1,0,c_white,c_white,c_white,c_white,1);
		//draw_sprite_general(sprite_index,0,0,sprite_height/2+sprite_gap,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y+sprite_gap,1,1,0,c_white,c_white,c_white,c_white,1);
	
		//if sprite_gap = sprite_height/2 {
		//	play_scale = clamp(play_scale - 0.03,0.67,1);
		//	x = lerp(x,locale_lane_x+164,0.3);
		//	y = lerp(y,locale_lane_y+222,0.3);
		//	layer_sequence_xscale(play_element_seq,play_scale);
		//	layer_sequence_yscale(play_element_seq,play_scale);
		//	layer_sequence_x(play_element_seq,x-(1-play_scale)*164);
		//	layer_sequence_y(play_element_seq,y-(1-play_scale)*222);
		//}
	}
}

common_locales = 0;
uncommon_locales = 0;
rare_locales = 0;
mythic_locales = 0;
legendary_locales = 0;
common_spells = 0;
uncommon_spells = 0;
rare_spells = 0;
mythic_spells = 0;
legendary_spells = 0;
for (var hand_iter = 0; hand_iter < array_length(hand_rarity); hand_iter++) {
	if hand_rarity[hand_iter] = 0 && hand_card_type[hand_iter] = 0 {
		common_locales += 1;
	}
	if hand_rarity[hand_iter] = 1 && hand_card_type[hand_iter] = 0 {
		uncommon_locales += 1;
	}
	if hand_rarity[hand_iter] = 2 && hand_card_type[hand_iter] = 0 {
		rare_locales += 1;
	}
	if hand_rarity[hand_iter] = 3 && hand_card_type[hand_iter] = 0 {
		mythic_locales += 1;
	}
	if hand_rarity[hand_iter] = 4 && hand_card_type[hand_iter] = 0 {
		legendary_locales += 1;
	}
	if hand_rarity[hand_iter] = 0 && hand_card_type[hand_iter] = 1 {
		common_spells += 1;
	}
	if hand_rarity[hand_iter] = 1 && hand_card_type[hand_iter] = 1 {
		uncommon_spells += 1;
	}
	if hand_rarity[hand_iter] = 2 && hand_card_type[hand_iter] = 1 {
		rare_spells += 1;
	}
	if hand_rarity[hand_iter] = 3 && hand_card_type[hand_iter] = 1 {
		mythic_spells += 1;
	}
	if hand_rarity[hand_iter] = 4 && hand_card_type[hand_iter] = 1 {
		legendary_spells += 1;
	}
}

//draw_sprite_ext(s_opp_cards_tooltip,0,2214,25,1,1,0,c_white,1);
//draw_set_font(Empower_font);
//tooltip_string_1 = "Locales: " + string(common_locales) + "/" + string(uncommon_locales) + "/" + string(rare_locales) + "/" + string(mythic_locales) + "/" + string(legendary_locales);
//draw_text_colour(2450,75,tooltip_string_1,c_maroon,c_maroon,c_maroon,c_maroon,1);
//tooltip_string_2 = "Spells: " + string(common_spells) + "/" + string(uncommon_spells) + "/" + string(rare_spells) + "/" + string(mythic_spells) + "/" + string(legendary_spells);
//draw_text_colour(2450,125,tooltip_string_2,c_maroon,c_maroon,c_maroon,c_maroon,1);

//draw_text_colour(2450,175,string(global.turn_count),c_maroon,c_maroon,c_maroon,c_maroon,1);