/// @description Insert description here
// You can write your code in this editor

if opp = false {
	if scr_check_if_targets("player") = false {
		channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_citrine);
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
		global.channelled_left_player_citrine += channel;
		global.channelled_right_player_citrine += channel;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	}
} else {
	if scr_check_if_targets("opp") = false {
		channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_citrine);
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
		global.channelled_left_opp_citrine += channel;
		global.channelled_right_opp_citrine += channel;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	}
}

alarm[0] = 80;