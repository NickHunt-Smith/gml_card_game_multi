
for (var _i = 0; _i < array_length(blueflames); _i++) {
	if layer_sequence_is_finished(blueflames[_i]) = true {
		layer_sequence_destroy(blueflames[_i]);
		array_delete(blueflames,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(onyx_lefts); _i++) {
	if layer_sequence_is_finished(onyx_lefts[_i]) = true {
		layer_sequence_destroy(onyx_lefts[_i]);
		array_delete(onyx_lefts,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(onyx_middles); _i++) {
	if layer_sequence_is_finished(onyx_middles[_i]) = true {
		layer_sequence_destroy(onyx_middles[_i]);
		array_delete(onyx_middles,_i,1);
		break
	}
}

for (var _i = 0; _i < array_length(onyx_rights); _i++) {
	if layer_sequence_is_finished(onyx_rights[_i]) = true {
		layer_sequence_destroy(onyx_rights[_i]);
		array_delete(onyx_rights,_i,1);
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