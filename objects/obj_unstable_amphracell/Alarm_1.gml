
amphra_seqs = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	array_push(amphra_seqs,layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_amphramute));
	scr_sequence_target(amphra_seqs[_i],targets[_i],opp,card_state);
}

alarm[3] = 50;