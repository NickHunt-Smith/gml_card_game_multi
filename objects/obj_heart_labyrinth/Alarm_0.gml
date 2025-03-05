/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

if card_state.position = "left_player" && global.opp_locale_1 != noone {
	target_1 = global.opp_locale_1;
} else if card_state.position = "left_middle_player" && global.opp_locale_2 != noone {
	target_1 = global.opp_locale_2;
} else if card_state.position = "right_middle_player" && global.opp_locale_3 != noone {
	target_1 = global.opp_locale_3;
} else if card_state.position = "right_player" && global.opp_locale_4 != noone {
	target_1 = global.opp_locale_4;
} else if card_state.position = "left_opp" && global.player_locale_1 != noone {
	target_1 = global.player_locale_1;
} else if card_state.position = "left_middle_opp" && global.player_locale_2 != noone {
	target_1 = global.player_locale_2;
} else if card_state.position = "right_middle_opp" && global.player_locale_3 != noone {
	target_1 = global.player_locale_3;
} else if card_state.position = "right_opp" && global.player_locale_4 != noone {
	target_1 = global.player_locale_4;
} else {
	skip_target_1 = true;
}

if skip_target_1 = false {
	spark = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_freeze);
	scr_sequence_target(spark,target_1,opp,card_state);
	alarm[1] = 20;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
	alarm[2] = 60;
}