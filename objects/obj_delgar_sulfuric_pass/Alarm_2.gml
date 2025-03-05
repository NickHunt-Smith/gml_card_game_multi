/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

sulfur = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_sulfur);

alarm[1] = 160;