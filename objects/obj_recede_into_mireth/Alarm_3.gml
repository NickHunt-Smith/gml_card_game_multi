if opp = false {
	
	if global.channelled_left_opp_ruby + channel >= 0 {
		global.channelled_left_opp_ruby += channel;
	} else if global.channelled_left_opp_pearl + channel >= 0 {
		global.channelled_left_opp_pearl += channel;
	} else if global.channelled_left_opp_onyx + channel >= 0 {
		global.channelled_left_opp_onyx += channel;
	} else if global.channelled_left_opp_sapphire + channel >= 0 {
		global.channelled_left_opp_sapphire += channel;
	} else if global.channelled_left_opp_emerald + channel >= 0 {
		global.channelled_left_opp_emerald += channel;
	} else if global.channelled_left_opp_citrine + channel >= 0 {
		global.channelled_left_opp_citrine += channel;
	} else if global.channelled_left_opp_opal + channel >= 0 {
		global.channelled_left_opp_opal += channel;
	} else if global.channelled_left_opp_amethyst + channel >= 0 {
		global.channelled_left_opp_amethyst += channel;
	}
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	
	
	if global.channelled_right_opp_ruby + channel >= 0 {
		global.channelled_right_opp_ruby += channel;
	} else if global.channelled_right_opp_pearl + channel >= 0 {
		global.channelled_right_opp_pearl += channel;
	} else if global.channelled_right_opp_onyx + channel >= 0 {
		global.channelled_right_opp_onyx += channel;
	} else if global.channelled_right_opp_sapphire + channel >= 0 {
		global.channelled_right_opp_sapphire += channel;
	} else if global.channelled_right_opp_emerald + channel >= 0 {
		global.channelled_right_opp_emerald += channel;
	} else if global.channelled_right_opp_citrine + channel >= 0 {
		global.channelled_right_opp_citrine += channel;
	} else if global.channelled_right_opp_opal + channel >= 0 {
		global.channelled_right_opp_opal += channel;
	} else if global.channelled_right_opp_amethyst + channel >= 0 {
		global.channelled_right_opp_amethyst += channel;
	}
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	global.player.voids += 1;
} else {
	if global.channelled_left_player_ruby + channel >= 0 {
		global.channelled_left_player_ruby += channel;
	} else if global.channelled_left_player_pearl + channel >= 0 {
		global.channelled_left_player_pearl += channel;
	} else if global.channelled_left_player_onyx + channel >= 0 {
		global.channelled_left_player_onyx += channel;
	} else if global.channelled_left_player_sapphire + channel >= 0 {
		global.channelled_left_player_sapphire += channel;
	} else if global.channelled_left_player_emerald + channel >= 0 {
		global.channelled_left_player_emerald += channel;
	} else if global.channelled_left_player_citrine + channel >= 0 {
		global.channelled_left_player_citrine += channel;
	} else if global.channelled_left_player_opal + channel >= 0 {
		global.channelled_left_player_opal += channel;
	} else if global.channelled_left_player_amethyst + channel >= 0 {
		global.channelled_left_player_amethyst += channel;
	}
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	
	
	if global.channelled_right_player_ruby + channel >= 0 {
		global.channelled_right_player_ruby += channel;
	} else if global.channelled_right_player_pearl + channel >= 0 {
		global.channelled_right_player_pearl += channel;
	} else if global.channelled_right_player_onyx + channel >= 0 {
		global.channelled_right_player_onyx += channel;
	} else if global.channelled_right_player_sapphire + channel >= 0 {
		global.channelled_right_player_sapphire += channel;
	} else if global.channelled_right_player_emerald + channel >= 0 {
		global.channelled_right_player_emerald += channel;
	} else if global.channelled_right_player_citrine + channel >= 0 {
		global.channelled_right_player_citrine += channel;
	} else if global.channelled_right_player_opal + channel >= 0 {
		global.channelled_right_player_opal += channel;
	} else if global.channelled_right_player_amethyst + channel >= 0 {
		global.channelled_right_player_amethyst += channel;
	}
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	global.opponent.voids += 1;
}

alarm[0] = 50;