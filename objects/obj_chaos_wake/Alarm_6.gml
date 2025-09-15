/// @description Discard effect

channel = 3;
if opp = false {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_amethyst);
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	global.channelled_left_player_amethyst += channel;
	global.channelled_right_player_amethyst += channel;
} else {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_amethyst);
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	global.channelled_left_opp_amethyst += channel;
	global.channelled_right_opp_amethyst += channel;
}

alarm[7] = 80;