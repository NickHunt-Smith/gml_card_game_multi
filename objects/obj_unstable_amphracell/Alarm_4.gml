
for (var _i = 0; _i < array_length(bolts_on_card_seqs); _i++) {
	layer_sequence_destroy(bolts_on_card_seqs[_i]);
}
bolts_on_card_seqs = [];

shield_seqs = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	if targets[_i].shielded = true {
		array_push(shield_seqs,layer_sequence_create("effect_layer",targets[_i].x + 111,targets[_i].y + 184,seq_shield_break));
		targets[_i].shielded = false;
	} else {
		var seq_restore_change_1 = scr_change_numbers(play_damage_1,targets[_i].x+global.health_offset_x,targets[_i].y+328);
		targets[_i].health_locale += play_damage_1;
	}
}

alarm[0] = 80;