if opp = false {
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

	if max_channel > 0 {
		if max_channel_inds[0] = 1 {
			global.channelled_left_opp_ruby += channel;
		} else if max_channel_inds[1] = 1 {
			global.channelled_left_opp_pearl += channel;
		} else if max_channel_inds[2] = 1 {
			global.channelled_left_opp_onyx += channel;
		} else if max_channel_inds[3] = 1 {
			global.channelled_left_opp_sapphire += channel;
		} else if max_channel_inds[4] = 1 {
			global.channelled_left_opp_emerald += channel;
		} else if max_channel_inds[5] = 1 {
			global.channelled_left_opp_citrine += channel;
		} else if max_channel_inds[6] = 1 {
			global.channelled_left_opp_amethyst += channel;
		} else if max_channel_inds[7] = 1 {
			global.channelled_left_opp_opal += channel;
		}
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	}
	
	var max_channel = 0;
	var max_channel_inds = [0,0,0,0,0,0,0,0];
	for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
		if global.channelled_right_opp[_i] > max_channel {
			max_channel = global.channelled_right_opp[_i];
			max_channel_inds = [0,0,0,0,0,0,0,0];
			max_channel_inds[_i] = 1;
		} else if global.channelled_right_opp[_i] = max_channel {
			max_channel_inds[_i] = 1;
		}
	}

	if max_channel > 0 {
		if max_channel_inds[0] = 1 {
			global.channelled_right_opp_ruby += channel;
		} else if max_channel_inds[1] = 1 {
			global.channelled_right_opp_pearl += channel;
		} else if max_channel_inds[2] = 1 {
			global.channelled_right_opp_onyx += channel;
		} else if max_channel_inds[3] = 1 {
			global.channelled_right_opp_sapphire += channel;
		} else if max_channel_inds[4] = 1 {
			global.channelled_right_opp_emerald += channel;
		} else if max_channel_inds[5] = 1 {
			global.channelled_right_opp_citrine += channel;
		} else if max_channel_inds[6] = 1 {
			global.channelled_right_opp_amethyst += channel;
		} else if max_channel_inds[7] = 1 {
			global.channelled_right_opp_opal += channel;
		}
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	}
	global.player.voids += 1;
} else {
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

	if max_channel > 0 {
		if max_channel_inds[0] = 1 {
			global.channelled_left_player_ruby += channel;
		} else if max_channel_inds[1] = 1 {
			global.channelled_left_player_pearl += channel;
		} else if max_channel_inds[2] = 1 {
			global.channelled_left_player_onyx += channel;
		} else if max_channel_inds[3] = 1 {
			global.channelled_left_player_sapphire += channel;
		} else if max_channel_inds[4] = 1 {
			global.channelled_left_player_emerald += channel;
		} else if max_channel_inds[5] = 1 {
			global.channelled_left_player_citrine += channel;
		} else if max_channel_inds[6] = 1 {
			global.channelled_left_player_amethyst += channel;
		} else if max_channel_inds[7] = 1 {
			global.channelled_left_player_opal += channel;
		}
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	}
	
	var max_channel = 0;
	var max_channel_inds = [0,0,0,0,0,0,0,0];
	for (var _i = 0; _i < array_length(global.channelled_right_player); _i++) {
		if global.channelled_right_player[_i] > max_channel {
			max_channel = global.channelled_right_player[_i];
			max_channel_inds = [0,0,0,0,0,0,0,0];
			max_channel_inds[_i] = 1;
		} else if global.channelled_right_player[_i] = max_channel {
			max_channel_inds[_i] = 1;
		}
	}

	if max_channel > 0 {
		if max_channel_inds[0] = 1 {
			global.channelled_right_player_ruby += channel;
		} else if max_channel_inds[1] = 1 {
			global.channelled_right_player_pearl += channel;
		} else if max_channel_inds[2] = 1 {
			global.channelled_right_player_onyx += channel;
		} else if max_channel_inds[3] = 1 {
			global.channelled_right_player_sapphire += channel;
		} else if max_channel_inds[4] = 1 {
			global.channelled_right_player_emerald += channel;
		} else if max_channel_inds[5] = 1 {
			global.channelled_right_player_citrine += channel;
		} else if max_channel_inds[6] = 1 {
			global.channelled_right_player_amethyst += channel;
		} else if max_channel_inds[7] = 1 {
			global.channelled_right_player_opal += channel;
		}
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	}
	global.opponent.voids += 1;
}

alarm[0] = 50;