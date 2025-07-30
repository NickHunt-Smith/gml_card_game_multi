/// @description Insert description here
// You can write your code in this editor

if opp = false {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_sapphire);
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	global.channelled_left_player_sapphire += channel;
	global.channelled_right_player_sapphire += channel;
} else {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_sapphire);
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	global.channelled_left_opp_sapphire += channel;
	global.channelled_right_opp_sapphire += channel;
}

alarm[0] = 80;