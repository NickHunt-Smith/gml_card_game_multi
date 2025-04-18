
for (var _i = 0; _i < array_length(wood_clicks); _i++) {
	if layer_sequence_is_finished(wood_clicks[_i]) = true {
		layer_sequence_destroy(wood_clicks[_i]);
		array_delete(wood_clicks,_i,1);
		break
	}
}