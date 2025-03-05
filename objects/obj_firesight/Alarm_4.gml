/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}

if opp = false && global.player.ruby_spell_damage >= channel_threshold {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_ruby);
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
	global.channelled_left_player_ruby += channel;
	global.channelled_right_player_ruby += channel;
} else if global.opponent.ruby_spell_damage >= channel_threshold {
	channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_ruby);
	seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
	seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
	global.channelled_left_opp_ruby += channel;
	global.channelled_right_opp_ruby += channel;
}

alarm[0] = 80;