/// @description Insert description here
// You can write your code in this editor

if opp = false {
	var max_channel = 0;
	var max_channel_inds = [0,0,0,0,0,0,0,0];
	for (var _i = 0; _i < array_length(global.channelled_left_player); _i++) {
		if global.channelled_left_player[_i] > max_channel {
			max_channel = global.channelled_left_player[_i];
			max_channel_inds = [0,0,0,0,0,0,0,0];
			max_channel_inds[_i] = 1;
		} else if global.channelled_left_player[_i] = max_channel {
			max_channel_inds[_i] = 1;
		}
	}
	var max_channel_inds_left = max_channel_inds;
	var max_channel_left = max_channel;
	max_channel = 0;
	max_channel_inds = [0,0,0,0,0,0,0,0];
	for (var _i = 0; _i < array_length(global.channelled_right_player); _i++) {
		if global.channelled_right_player[_i] > max_channel {
			max_channel = global.channelled_right_player[_i];
			max_channel_inds = [0,0,0,0,0,0,0,0];
			max_channel_inds[_i] = 1;
		} else if global.channelled_right_player[_i] = max_channel {
			max_channel_inds[_i] = 1;
		}
	}
	var max_channel_inds_right = max_channel_inds;
	var max_channel_right = max_channel;
	
	if (max_channel_inds_left[7] = 1 && max_channel_left >= max_channel_right) or (max_channel_inds_right[7] = 1 && max_channel_right >= max_channel_left) {
		channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_citrine);
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
		global.channelled_left_player_ruby += channel;
		global.channelled_right_player_ruby += channel;
		global.channelled_left_player_onyx += channel;
		global.channelled_right_player_onyx += channel;
		global.channelled_left_player_pearl += channel;
		global.channelled_right_player_pearl += channel;
		global.channelled_left_player_sapphire += channel;
		global.channelled_right_player_sapphire += channel;
		global.channelled_left_player_emerald += channel;
		global.channelled_right_player_emerald += channel;
		global.channelled_left_player_citrine += channel;
		global.channelled_right_player_citrine += channel;
		global.channelled_left_player_opal += channel;
		global.channelled_right_player_opal += channel;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	}
} else {
	var max_channel = 0;
	var max_channel_inds = [0,0,0,0,0,0,0,0];
	for (var _i = 0; _i < array_length(global.channelled_left_opp); _i++) {
		if global.channelled_left_opp[_i] > max_channel {
			max_channel = global.channelled_left_opp[_i];
			max_channel_inds = [0,0,0,0,0,0,0,0];
			max_channel_inds[_i] = 1;
		} else if global.channelled_left_opp[_i] = max_channel {
			max_channel_inds[_i] = 1;
		}
	}
	var max_channel_inds_left = max_channel_inds;
	var max_channel_left = max_channel;
	max_channel = 0;
	max_channel_inds = [0,0,0,0,0,0,0,0];
	for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
		if global.channelled_right_opp[_i] > max_channel {
			max_channel = global.channelled_right_opp[_i];
			max_channel_inds = [0,0,0,0,0,0,0,0];
			max_channel_inds[_i] = 1;
		} else if global.channelled_right_opp[_i] = max_channel {
			max_channel_inds[_i] = 1;
		}
	}
	var max_channel_inds_right = max_channel_inds;
	var max_channel_right = max_channel;
	
	if (max_channel_inds_left[7] = 1 && max_channel_left >= max_channel_right) or (max_channel_inds_right[7] = 1 && max_channel_right >= max_channel_left) {
		channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_citrine);
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
		global.channelled_left_opp_ruby += channel;
		global.channelled_right_opp_ruby += channel;
		global.channelled_left_opp_onyx += channel;
		global.channelled_right_opp_onyx += channel;
		global.channelled_left_opp_pearl += channel;
		global.channelled_right_opp_pearl += channel;
		global.channelled_left_opp_sapphire += channel;
		global.channelled_right_opp_sapphire += channel;
		global.channelled_left_opp_emerald += channel;
		global.channelled_right_opp_emerald += channel;
		global.channelled_left_opp_citrine += channel;
		global.channelled_right_opp_citrine += channel;
		global.channelled_left_opp_opal += channel;
		global.channelled_right_opp_opal += channel;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	}
}

alarm[0] = 80;