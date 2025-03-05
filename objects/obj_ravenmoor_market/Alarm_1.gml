/// @description Insert description here
// You can write your code in this editor

drain_seqs = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	array_push(drain_seqs,layer_sequence_create("effect_layer",card_state.x + 112,card_state.y + 184,seq_coins));
	scr_sequence_target(drain_seqs[_i],targets[_i],opp,card_state);
}

alarm[3] = 120;

