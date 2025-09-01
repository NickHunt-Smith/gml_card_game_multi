/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

var neighbour_1 = noone;
var neighbour_2 = noone;
if card_state.position = "left_player" {
	neighbour_1 = global.player_locale_2
	neighbour_2 = global.player_locale_2
} else if card_state.position = "left_middle_player" {
	neighbour_1 = global.player_locale_1
	neighbour_2 = global.player_locale_3
} else if card_state.position = "right_middle_player" {
	neighbour_1 = global.player_locale_4
	neighbour_2 = global.player_locale_2
} else if card_state.position = "right_player" {
	neighbour_1 = global.player_locale_3
	neighbour_2 = global.player_locale_3
} else if card_state.position = "left_opp" {
	neighbour_1 = global.opp_locale_2
	neighbour_2 = global.opp_locale_2
} else if card_state.position = "left_middle_opp" {
	neighbour_1 = global.opp_locale_1
	neighbour_2 = global.opp_locale_3
} else if card_state.position = "right_middle_opp" {
	neighbour_1 = global.opp_locale_4
	neighbour_2 = global.opp_locale_2
} else if card_state.position = "right_opp" {
	neighbour_1 = global.opp_locale_3
	neighbour_2 = global.opp_locale_3
}

if neighbour_1 = noone or neighbour_2 = noone {
	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	seq_restore_change_1 = scr_change_numbers(strength_boost,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += strength_boost; 
	
	seq_restore_change_2 = scr_change_numbers(channel_boost,card_state.x+global.channel_offset_x,card_state.y+328);
	if card_state.frozen = true {
		card_state.memory_channel += channel_boost;
	} else {
		card_state.channel += channel_boost;
	}
	alarm[1] = 100;
} else {
	alarm[1] = 1;
}

