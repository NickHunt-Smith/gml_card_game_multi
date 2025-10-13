

if opp = false {
	rerolls_used = global.rerolls_used;
	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	var seq_restore_change = scr_change_numbers(rerolls_used,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += rerolls_used;
	alarm[3] = 90;
} else {
	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	var seq_restore_change = scr_change_numbers(rerolls_used,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += rerolls_used;
	alarm[3] = 90;
}