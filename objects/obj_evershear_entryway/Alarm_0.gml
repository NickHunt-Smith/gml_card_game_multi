/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
var seq_restore_change = scr_change_numbers(restore_amount,card_state.x+global.health_offset_x,card_state.y+328);
card_state.health_locale += restore_amount;
alarm[1] = 100;