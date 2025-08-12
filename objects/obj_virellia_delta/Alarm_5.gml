
for (var _i = 0; _i < array_length(wave_seqs); _i++) {
	layer_sequence_destroy(wave_seqs[_i]);
}

for (var _i = 0; _i < array_length(fortify_seqs); _i++) {
	layer_sequence_destroy(fortify_seqs[_i]);
}

fortify_seqs = [];
wave_seqs = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	array_push(wave_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+184,seq_wave));
	array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
	if targets[_i].frozen = true {
		targets[_i].memory_channel += flood_channel_boost;
	} else {
		targets[_i].channel += flood_channel_boost;
	}
	targets[_i].health_locale += flood_strength_boost;
}
alarm[6] = 90;