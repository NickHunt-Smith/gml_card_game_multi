/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(amphra_seqs); _i++) {
	layer_sequence_destroy(amphra_seqs[_i]);
}
amphra_seqs = [];

bolts_on_card_seqs = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	array_push(bolts_on_card_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+184,seq_bolts_on_card_self));
}

alarm[4] = 80;