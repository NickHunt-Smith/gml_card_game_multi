/// @description Insert description here
// You can write your code in this editor

if global.player_enabled = true {
	if (collision_point(mouse_x,mouse_y,self,false,false)) && (shimmering = false) {
		end_turn_shimmer = part_system_create(Ps_Portal_Circle_Blue_end_turn);
		part_system_position(end_turn_shimmer, x, y);
		part_system_depth(end_turn_shimmer,-1100);
		shimmering = true;
	} else if (!collision_point(mouse_x,mouse_y,self,false,false)) && (shimmering = true) {
		part_system_destroy(end_turn_shimmer);
		shimmering = false;
	}
} else if (global.player_enabled = false) && (shimmering = true) {
	part_system_destroy(end_turn_shimmer);
	shimmering = false;
}

// Conduct end of turn effects if not waiting for animations

if global.end_turn_active = true && array_length(global.being_destroyed) = 0 && global.end_game_trigger = false {
	
	if combat_ended = false {
		if combat_started = false {
			alarm[0] = 50;
			combat_started = true;
		}
	} else {
		
		if global.priority = "player" {
		
			if (global.player_locale_1 != noone) && (player_1_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_1.x,global.player_locale_1.y,0,global.player_locale_1.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_1;
				player_1_done = true;
			} else if (global.opp_locale_1 != noone) && (opp_1_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_1.x,global.opp_locale_1.y,0,global.opp_locale_1.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_1;
				opp_1_done = true;
			} else if (global.opp_locale_2 != noone) && (opp_2_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_2.x,global.opp_locale_2.y,0,global.opp_locale_2.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_2;
				opp_2_done = true;
			} else if (global.player_locale_2 != noone) && (player_2_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_2.x,global.player_locale_2.y,0,global.player_locale_2.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_2;
				player_2_done = true;
			} else if (global.player_locale_3 != noone) && (player_3_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_3.x,global.player_locale_3.y,0,global.player_locale_3.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_3;
				player_3_done = true;
			} else if (global.opp_locale_3 != noone) && (opp_3_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_3.x,global.opp_locale_3.y,0,global.opp_locale_3.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_3;
				opp_3_done = true;
			} else if (global.opp_locale_4 != noone) && (opp_4_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_4.x,global.opp_locale_4.y,0,global.opp_locale_4.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_4;
				opp_4_done = true;
			} else if (global.player_locale_4 != noone) && (player_4_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_4.x,global.player_locale_4.y,0,global.player_locale_4.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_4;
				player_4_done = true;
			} else if (global.wait_for_effect = false) {
				//global.player_enabled = true;
				if locked_boosting = false {
					if array_max(global.channelled_left_opp) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
							if global.channelled_right_opp[_i] >= max_channel {
								max_channel = global.channelled_right_opp[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_ruby_extra);
							global.channelled_right_opp_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_pearl_extra);
							global.channelled_right_opp_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_onyx_extra);
							global.channelled_right_opp_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_1,90);
						layer_sequence_xscale(channel_seq_1,1.2);
						layer_sequence_yscale(channel_seq_1,1.2);
						var seq_change_health_1 = scr_change_numbers(locked_channel_boost,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else if array_max(global.channelled_right_opp) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_left_opp); _i++) {
							if global.channelled_left_opp[_i] >= max_channel {
								max_channel = global.channelled_left_opp[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_ruby_extra);
							global.channelled_left_opp_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_pearl_extra);
							global.channelled_left_opp_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_onyx_extra);
							global.channelled_left_opp_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_1,-90);
						layer_sequence_xscale(channel_seq_1,1.2);
						layer_sequence_yscale(channel_seq_1,1.2);
						var seq_change_health_1 = scr_change_numbers(locked_channel_boost,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else if array_max(global.channelled_right_player) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_left_player); _i++) {
							if global.channelled_left_player[_i] >= max_channel {
								max_channel = global.channelled_left_player[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_ruby_extra);
							global.channelled_left_player_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_pearl_extra);
							global.channelled_left_player_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_onyx_extra);
							global.channelled_left_player_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_2,-90);
						layer_sequence_xscale(channel_seq_2,1.2);
						layer_sequence_yscale(channel_seq_2,1.2);
						var seq_change_health_2 = scr_change_numbers(locked_channel_boost,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else if array_max(global.channelled_left_player) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_right_player); _i++) {
							if global.channelled_right_player[_i] >= max_channel {
								max_channel = global.channelled_right_player[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_ruby_extra);
							global.channelled_right_player_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_pearl_extra);
							global.channelled_right_player_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_onyx_extra);
							global.channelled_right_player_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_2,90);
						layer_sequence_xscale(channel_seq_2,1.2);
						layer_sequence_yscale(channel_seq_2,1.2);
						var seq_change_health_2 = scr_change_numbers(locked_channel_boost,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else {
						alarm[8] = 1;
						locked_boosting = true;
					}
				}
			} 
		}
		else if global.priority = "opp" {
			if (global.opp_locale_1 != noone) && (opp_1_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_1.x,global.opp_locale_1.y,0,global.opp_locale_1.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_1;
				opp_1_done = true;
			} else if (global.player_locale_1 != noone) && (player_1_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_1.x,global.player_locale_1.y,0,global.player_locale_1.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_1;
				player_1_done = true;
			} else if (global.player_locale_2 != noone) && (player_2_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_2.x,global.player_locale_2.y,0,global.player_locale_2.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_2;
				player_2_done = true;
			} else if (global.opp_locale_2 != noone) && (opp_2_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_2.x,global.opp_locale_2.y,0,global.opp_locale_2.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_2;
				opp_2_done = true;
			} else if (global.opp_locale_3 != noone) && (opp_3_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_3.x,global.opp_locale_3.y,0,global.opp_locale_3.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_3;
				opp_3_done = true;
			} else if (global.player_locale_3 != noone) && (player_3_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_3.x,global.player_locale_3.y,0,global.player_locale_3.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_3;
				player_3_done = true;
			} else if (global.player_locale_4 != noone) && (player_4_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.player_locale_4.x,global.player_locale_4.y,0,global.player_locale_4.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = false;
				effect_inst.card_state = global.player_locale_4;
				player_4_done = true;
			} else if (global.opp_locale_4 != noone) && (opp_4_done = false) && (global.wait_for_effect = false) {
				global.wait_for_effect = true;
				var effect_inst = instance_create_depth(global.opp_locale_4.x,global.opp_locale_4.y,0,global.opp_locale_4.effect_function);
				effect_inst.eff_type = "end_turn";
				effect_inst.opp = true;
				effect_inst.card_state = global.opp_locale_4;
				opp_4_done = true;
			} else if (global.wait_for_effect = false) {
				//global.player_enabled = true;
				if locked_boosting = false {
					if array_max(global.channelled_left_player) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_right_player); _i++) {
							if global.channelled_right_player[_i] >= max_channel {
								max_channel = global.channelled_right_player[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_ruby_extra);
							global.channelled_right_player_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_pearl_extra);
							global.channelled_right_player_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_onyx_extra);
							global.channelled_right_player_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_1,90);
						layer_sequence_xscale(channel_seq_1,1.2);
						layer_sequence_yscale(channel_seq_1,1.2);
						var seq_change_health_1 = scr_change_numbers(locked_channel_boost,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else if array_max(global.channelled_right_player) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_left_player); _i++) {
							if global.channelled_left_player[_i] >= max_channel {
								max_channel = global.channelled_left_player[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_ruby_extra);
							global.channelled_left_player_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_pearl_extra);
							global.channelled_left_player_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_1 = layer_sequence_create("effect_layer",1560,105,seq_channel_onyx_extra);
							global.channelled_left_player_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_1,-90);
						layer_sequence_xscale(channel_seq_1,1.2);
						layer_sequence_yscale(channel_seq_1,1.2);
						var seq_change_health_1 = scr_change_numbers(locked_channel_boost,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else if array_max(global.channelled_right_opp) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_left_opp); _i++) {
							if global.channelled_left_opp[_i] >= max_channel {
								max_channel = global.channelled_left_opp[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_ruby_extra);
							global.channelled_left_opp_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_pearl_extra);
							global.channelled_left_opp_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_onyx_extra);
							global.channelled_left_opp_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_2,-90);
						layer_sequence_xscale(channel_seq_2,1.2);
						layer_sequence_yscale(channel_seq_2,1.2);
						var seq_change_health_2 = scr_change_numbers(locked_channel_boost,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else if array_max(global.channelled_left_opp) >= 20  {
						var max_channel = 0;
						var max_channel_ind = 0;
						for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
							if global.channelled_right_opp[_i] >= max_channel {
								max_channel = global.channelled_right_opp[_i];
								max_channel_ind = _i;
							}
						}
				
						if max_channel_ind = 0 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_ruby_extra);
							global.channelled_right_opp_ruby += locked_channel_boost;
						} else if max_channel_ind = 1 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_pearl_extra);
							global.channelled_right_opp_pearl += locked_channel_boost;
						} else if max_channel_ind = 2 {
							channel_seq_2 = layer_sequence_create("effect_layer",1560,1400,seq_channel_onyx_extra);
							global.channelled_right_opp_onyx += locked_channel_boost;
						}
						layer_sequence_angle(channel_seq_2,90);
						layer_sequence_xscale(channel_seq_2,1.2);
						layer_sequence_yscale(channel_seq_2,1.2);
						var seq_change_health_2 = scr_change_numbers(locked_channel_boost,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
						alarm[8] = 100;
						locked_boosting = true;
					} else {
						alarm[8] = 1;
						locked_boosting = true;
					}
				}
			}
		}
	}
}

