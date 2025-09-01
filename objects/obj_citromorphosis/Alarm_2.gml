
if void_seq_1 != noone {
	layer_sequence_destroy(void_seq_1);
	void_seq_1 = noone;
}

if void_seq_2 != noone {
	layer_sequence_destroy(void_seq_2);
	void_seq_2 = noone;
}

if seq_change_channel_1 != noone {
	layer_sequence_destroy(seq_change_channel_1);
	seq_change_channel_1 = noone;
}

if seq_change_channel_2 != noone {
	layer_sequence_destroy(seq_change_channel_2);
	seq_change_channel_2 = noone;
}

if opp = false {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_citrine);
	seq_change_channel_1 = scr_change_numbers(channel_surge,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel_surge,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	global.channelled_left_player_citrine += channel_surge;
	global.channelled_right_player_citrine += channel_surge;
} else {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_citrine);
	seq_change_channel_1 = scr_change_numbers(channel_surge,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel_surge,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	global.channelled_left_opp_citrine += channel_surge;
	global.channelled_right_opp_citrine += channel_surge;
}

alarm[0] = 80;