

if opp = true {
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
		global.channelled_left_opp_ruby = 0;
		global.channelled_left_opp_pearl = 0;
		global.channelled_left_opp_onyx = 0;
		global.channelled_left_opp_sapphire = 0;
		global.channelled_left_opp_emerald = 0;
		global.channelled_left_opp_citrine = 0;
		global.channelled_left_opp_opal = 0;
		global.channelled_left_opp_amethyst = 0;
		seq_change_channel_1 = scr_change_numbers(max_channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	}
	
	var max_channel_1 = max_channel;
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
		global.channelled_right_opp_ruby = 0;
		global.channelled_right_opp_pearl = 0;
		global.channelled_right_opp_onyx = 0;
		global.channelled_right_opp_sapphire = 0;
		global.channelled_right_opp_emerald = 0;
		global.channelled_right_opp_citrine = 0;
		global.channelled_right_opp_opal = 0;
		global.channelled_right_opp_amethyst = 0;
		seq_change_channel_2 = scr_change_numbers(max_channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	}
	if max_channel_1 < max_channel {
		global.opponent.consumed -= max_channel;
	} else {
		global.opponent.consumed -= max_channel_1;
	}
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
		global.channelled_left_player_ruby = 0;
		global.channelled_left_player_pearl = 0;
		global.channelled_left_player_onyx = 0;
		global.channelled_left_player_sapphire = 0;
		global.channelled_left_player_emerald = 0;
		global.channelled_left_player_citrine = 0;
		global.channelled_left_player_opal = 0;
		global.channelled_left_player_amethyst = 0;
		seq_change_channel_1 = scr_change_numbers(max_channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	}
	
	var max_channel_1 = max_channel;
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
		global.channelled_right_player_ruby = 0;
		global.channelled_right_player_pearl = 0;
		global.channelled_right_player_onyx = 0;
		global.channelled_right_player_sapphire = 0;
		global.channelled_right_player_emerald = 0;
		global.channelled_right_player_citrine = 0;
		global.channelled_right_player_opal = 0;
		global.channelled_right_player_amethyst = 0;
		seq_change_channel_2 = scr_change_numbers(max_channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	}
	if max_channel_1 < max_channel {
		global.player.consumed -= max_channel;
	} else {
		global.player.consumed -= max_channel_1;
	}
}

shield = layer_sequence_create("effect_layer",card_state.x + 112,card_state.y + 184,seq_shield);

alarm[3] = 50;


