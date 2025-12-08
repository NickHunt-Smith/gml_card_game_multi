
//for (var _i = 0; _i < array_length(blueflames); _i++) {
//	if layer_sequence_is_finished(blueflames[_i]) = true {
//		layer_sequence_destroy(blueflames[_i]);
//		array_delete(blueflames,_i,1);
//		break
//	}
//}

//for (var _i = 0; _i < array_length(onyx_lefts); _i++) {
//	if layer_sequence_is_finished(onyx_lefts[_i]) = true {
//		layer_sequence_destroy(onyx_lefts[_i]);
//		array_delete(onyx_lefts,_i,1);
//		break
//	}
//}

//for (var _i = 0; _i < array_length(onyx_middles); _i++) {
//	if layer_sequence_is_finished(onyx_middles[_i]) = true {
//		layer_sequence_destroy(onyx_middles[_i]);
//		array_delete(onyx_middles,_i,1);
//		break
//	}
//}

//for (var _i = 0; _i < array_length(onyx_rights); _i++) {
//	if layer_sequence_is_finished(onyx_rights[_i]) = true {
//		layer_sequence_destroy(onyx_rights[_i]);
//		array_delete(onyx_rights,_i,1);
//		break
//	}
//}

// Left player
max_channel = 0;
max_channel_ind = 0;
tied = false;
if position = "left_player" {
	for (var _i = 0; _i < array_length(global.channelled_left_player); _i++) {
		if global.channelled_left_player[_i] = max_channel {
			tied = true;
		}
		if global.channelled_left_player[_i] > max_channel {
			max_channel = global.channelled_left_player[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
} else if position = "right_player" {
	for (var _i = 0; _i < array_length(global.channelled_right_player); _i++) {
		if global.channelled_right_player[_i] = max_channel {
			tied = true;
		}
		if global.channelled_right_player[_i] > max_channel {
			max_channel = global.channelled_right_player[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
} else if position = "left_opp" {
	for (var _i = 0; _i < array_length(global.channelled_left_opp); _i++) {
		if global.channelled_left_opp[_i] = max_channel {
			tied = true;
		}
		if global.channelled_left_opp[_i] > max_channel {
			max_channel = global.channelled_left_opp[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
} else if position = "right_opp" {
	for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
		if global.channelled_right_opp[_i] = max_channel {
			tied = true;
		}
		if global.channelled_right_opp[_i] > max_channel {
			max_channel = global.channelled_right_opp[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
}

for (var _i = 0; _i < array_length(ruby_clicks); _i++) {
	if layer_sequence_is_finished(ruby_clicks[_i]) = true {
		layer_sequence_destroy(ruby_clicks[_i]);
		array_delete(ruby_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(pearl_clicks); _i++) {
	if layer_sequence_is_finished(pearl_clicks[_i]) = true {
		layer_sequence_destroy(pearl_clicks[_i]);
		array_delete(pearl_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(onyx_clicks); _i++) {
	if layer_sequence_is_finished(onyx_clicks[_i]) = true {
		layer_sequence_destroy(onyx_clicks[_i]);
		array_delete(onyx_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(sapphire_clicks); _i++) {
	if layer_sequence_is_finished(sapphire_clicks[_i]) = true {
		layer_sequence_destroy(sapphire_clicks[_i]);
		array_delete(sapphire_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(emerald_clicks); _i++) {
	if layer_sequence_is_finished(emerald_clicks[_i]) = true {
		layer_sequence_destroy(emerald_clicks[_i]);
		array_delete(emerald_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(citrine_clicks); _i++) {
	if layer_sequence_is_finished(citrine_clicks[_i]) = true {
		layer_sequence_destroy(citrine_clicks[_i]);
		array_delete(citrine_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(opal_clicks); _i++) {
	if layer_sequence_is_finished(opal_clicks[_i]) = true {
		layer_sequence_destroy(opal_clicks[_i]);
		array_delete(opal_clicks,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(amethyst_clicks); _i++) {
	if layer_sequence_is_finished(amethyst_clicks[_i]) = true {
		layer_sequence_destroy(amethyst_clicks[_i]);
		array_delete(amethyst_clicks,_i,1);
		break
	}
}