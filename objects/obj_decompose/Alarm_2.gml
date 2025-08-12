/// @description Insert description here
// You can write your code in this editor

if fireball != noone {
	layer_sequence_destroy(fireball);
	fireball = noone;
}

seq_change_health_1 = scr_change_numbers(-target_1.channel,target_1.x+111,target_1.y + 328);
target_1.channel = 0;

var neighbour_1 = noone;
var neighbour_2 = noone;
if target_1.position = "left_player" {
	neighbour_1 = global.player_locale_2
} else if target_1.position = "left_middle_player" {
	neighbour_1 = global.player_locale_1
	neighbour_2 = global.player_locale_3
} else if target_1.position = "right_middle_player" {
	neighbour_1 = global.player_locale_4
	neighbour_2 = global.player_locale_2
} else if target_1.position = "right_player" {
	neighbour_1 = global.player_locale_3
} else if target_1.position = "left_opp" {
	neighbour_1 = global.opp_locale_2
} else if target_1.position = "left_middle_opp" {
	neighbour_1 = global.opp_locale_1
	neighbour_2 = global.opp_locale_3
} else if target_1.position = "right_middle_opp" {
	neighbour_1 = global.opp_locale_4
	neighbour_2 = global.opp_locale_2
} else if target_1.position = "right_opp" {
	neighbour_1 = global.opp_locale_3
}

if neighbour_1 = noone && neighbour_2 = noone {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
} else {
	if neighbour_1 != noone {
		fortify_seq_1 = layer_sequence_create("effect_layer",neighbour_1.x+112,neighbour_1.y+230,seq_fortify)
		var seq_restore_change = scr_change_numbers(target_1.health_locale,neighbour_1.x+global.health_offset_x,neighbour_1.y+328);
		neighbour_1.health_locale += target_1.health_locale;
	}

	if neighbour_2 != noone {
		fortify_seq_2 = layer_sequence_create("effect_layer",neighbour_2.x+112,neighbour_2.y+230,seq_fortify)
		var seq_restore_change = scr_change_numbers(target_1.health_locale,neighbour_2.x+global.health_offset_x,neighbour_2.y+328);
		neighbour_2.health_locale += target_1.health_locale;
	}
}

alarm[0] = 80;