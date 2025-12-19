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
	
	if max_channel < -channel_void {
		channel_void = -max_channel
	}

	if global.channelled_left_opp_ruby + channel_void >= 0 {
		global.channelled_left_opp_ruby += channel_void;
	} else if global.channelled_left_opp_pearl + channel_void >= 0 {
		global.channelled_left_opp_pearl += channel_void;
	} else if global.channelled_left_opp_onyx + channel_void >= 0 {
		global.channelled_left_opp_onyx += channel_void;
	} else if global.channelled_left_opp_sapphire + channel_void >= 0 {
		global.channelled_left_opp_sapphire += channel_void;
	} else if global.channelled_left_opp_emerald + channel_void >= 0 {
		global.channelled_left_opp_emerald += channel_void;
	} else if global.channelled_left_opp_citrine + channel_void >= 0 {
		global.channelled_left_opp_citrine += channel_void;
	} else if global.channelled_left_opp_opal + channel_void >= 0 {
		global.channelled_left_opp_opal += channel_void;
	} else if global.channelled_left_opp_amethyst + channel_void >= 0 {
		global.channelled_left_opp_amethyst += channel_void;
	}
	seq_change_channel_1 = scr_change_numbers(channel_void,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	
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
	
	if max_channel < -channel_void {
		channel_void = -max_channel
	}
	
	if global.channelled_right_opp_ruby + channel_void >= 0 {
		global.channelled_right_opp_ruby += channel_void;
	} else if global.channelled_right_opp_pearl + channel_void >= 0 {
		global.channelled_right_opp_pearl += channel_void;
	} else if global.channelled_right_opp_onyx + channel_void >= 0 {
		global.channelled_right_opp_onyx += channel_void;
	} else if global.channelled_right_opp_sapphire + channel_void >= 0 {
		global.channelled_right_opp_sapphire += channel_void;
	} else if global.channelled_right_opp_emerald + channel_void >= 0 {
		global.channelled_right_opp_emerald += channel_void;
	} else if global.channelled_right_opp_citrine + channel_void >= 0 {
		global.channelled_right_opp_citrine += channel_void;
	} else if global.channelled_right_opp_opal + channel_void >= 0 {
		global.channelled_right_opp_opal += channel_void;
	} else if global.channelled_right_opp_amethyst + channel_void >= 0 {
		global.channelled_right_opp_amethyst += channel_void;
	}
	seq_change_channel_2 = scr_change_numbers(channel_void,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
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
	
	if max_channel < -channel_void {
		channel_void = -max_channel
	}

	if global.channelled_left_player_ruby + channel_void >= 0 {
		global.channelled_left_player_ruby += channel_void;
	} else if global.channelled_left_player_pearl + channel_void >= 0 {
		global.channelled_left_player_pearl += channel_void;
	} else if global.channelled_left_player_onyx + channel_void >= 0 {
		global.channelled_left_player_onyx += channel_void;
	} else if global.channelled_left_player_sapphire + channel_void >= 0 {
		global.channelled_left_player_sapphire += channel_void;
	} else if global.channelled_left_player_emerald + channel_void >= 0 {
		global.channelled_left_player_emerald += channel_void;
	} else if global.channelled_left_player_citrine + channel_void >= 0 {
		global.channelled_left_player_citrine += channel_void;
	} else if global.channelled_left_player_opal + channel_void >= 0 {
		global.channelled_left_player_opal += channel_void;
	} else if global.channelled_left_player_amethyst + channel_void >= 0 {
		global.channelled_left_player_amethyst += channel_void;
	}
	seq_change_channel_1 = scr_change_numbers(channel_void,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	
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
	
	if max_channel < -channel_void {
		channel_void = -max_channel
	}
	
	if global.channelled_right_player_ruby + channel_void >= 0 {
		global.channelled_right_player_ruby += channel_void;
	} else if global.channelled_right_player_pearl + channel_void >= 0 {
		global.channelled_right_player_pearl += channel_void;
	} else if global.channelled_right_player_onyx + channel_void >= 0 {
		global.channelled_right_player_onyx += channel_void;
	} else if global.channelled_right_player_sapphire + channel_void >= 0 {
		global.channelled_right_player_sapphire += channel_void;
	} else if global.channelled_right_player_emerald + channel_void >= 0 {
		global.channelled_right_player_emerald += channel_void;
	} else if global.channelled_right_player_citrine + channel_void >= 0 {
		global.channelled_right_player_citrine += channel_void;
	} else if global.channelled_right_player_opal + channel_void >= 0 {
		global.channelled_right_player_opal += channel_void;
	} else if global.channelled_right_player_amethyst + channel_void >= 0 {
		global.channelled_right_player_amethyst += channel_void;
	}
	global.opponent.voids += 1;
}

alarm[2] = 50;