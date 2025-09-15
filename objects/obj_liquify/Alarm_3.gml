if consume_seq_1 != noone {
	layer_sequence_destroy(consume_seq_1);
	consume_seq_1 = noone;
}

if consume_seq_2 != noone {
	layer_sequence_destroy(consume_seq_2);
	consume_seq_2 = noone;
}

if seq_change_channel_1 != noone {
	layer_sequence_destroy(seq_change_channel_1);
	seq_change_channel_1 = noone;
}

if seq_change_channel_2 != noone {
	layer_sequence_destroy(seq_change_channel_2);
	seq_change_channel_2 = noone;
}

if consume_clouds_1 != noone {
	part_emitter_destroy_all(consume_clouds_1);
	consume_clouds_1 = noone;
}

if consume_clouds_2 != noone {
	part_emitter_destroy_all(consume_clouds_2);
	consume_clouds_2 = noone;
}

if skip_target_1 = false {
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
	alarm[0] = 80;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}