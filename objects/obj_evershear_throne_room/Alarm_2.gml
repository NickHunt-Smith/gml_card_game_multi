/// @description Insert description here
// You can write your code in this editor

if card_state.position = "left_player" {
	if global.opp_locale_1 != noone {
		target_1 = global.opp_locale_1;
	} else {
		skip_target = true;
	}
} else if card_state.position = "left_middle_player" {
	if global.opp_locale_2 != noone {
		target_1 = global.opp_locale_2;
	} else {
		skip_target = true;
	}
} else if card_state.position = "right_middle_player" {
	if global.opp_locale_3 != noone {
		target_1 = global.opp_locale_3;
	} else {
		skip_target = true;
	}
} else if card_state.position = "right_player" {
	if global.opp_locale_4 != noone {
		target_1 = global.opp_locale_4;
	} else {
		skip_target = true;
	}
} else if card_state.position = "left_opp" {
	if global.player_locale_1 != noone {
		target_1 = global.player_locale_1;
	} else {
		skip_target = true;
	}
} else if card_state.position = "left_middle_opp" {
	if global.player_locale_2 != noone {
		target_1 = global.player_locale_2;
	} else {
		skip_target = true;
	}
} else if card_state.position = "right_middle_opp" {
	if global.player_locale_3 != noone {
		target_1 = global.player_locale_3;
	} else {
		skip_target = true;
	}
} else if card_state.position = "right_opp" {
	if global.player_locale_4 != noone {
		target_1 = global.player_locale_4;
	} else {
		skip_target = true;
	}
}

if skip_target = false {
	clash = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_dominate_friendly);
	alarm[3] = 35;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
	alarm[0] = 60;
}