/// @description Insert description here
// You can write your code in this editor

if opp = false {
	var friendly_leg = false;
	if global.player_locale_1 != noone && global.player_locale_1.rarity = 4 {
		friendly_leg = true;
	} else if global.player_locale_2 != noone && global.player_locale_2.rarity = 4 {
		friendly_leg = true;
	} else if global.player_locale_3 != noone && global.player_locale_3.rarity = 4 {
		friendly_leg = true;
	} else if global.player_locale_4 != noone && global.player_locale_4.rarity = 4 {
		friendly_leg = true;
	}
	
	if friendly_leg = true {
		channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_opal);
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_player_loc_x,global.channelled_left_player_loc_y);
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_player_loc_x,global.channelled_right_player_loc_y);
		global.channelled_left_player_opal += channel;
		global.channelled_right_player_opal += channel;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	}
} else {
	var friendly_leg = false;
	if global.opp_locale_1 != noone && global.opp_locale_1.rarity = 4 {
		friendly_leg = true;
	} else if global.opp_locale_2 != noone && global.opp_locale_2.rarity = 4 {
		friendly_leg = true;
	} else if global.opp_locale_3 != noone && global.opp_locale_3.rarity = 4 {
		friendly_leg = true;
	} else if global.opp_locale_4 != noone && global.opp_locale_4.rarity = 4 {
		friendly_leg = true;
	}
	
	if friendly_leg = true {
		channel_seq = layer_sequence_create("effect_layer",x + 5000,y -5000,seq_channel_opal);
		seq_change_channel_1 = scr_change_numbers(channel,global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y);
		seq_change_channel_2 = scr_change_numbers(channel,global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y);
		global.channelled_left_opp_opal += channel;
		global.channelled_right_opp_opal += channel;
	} else {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	}
}

alarm[0] = 80;