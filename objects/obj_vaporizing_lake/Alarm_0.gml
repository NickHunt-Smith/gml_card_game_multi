/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
seq_change_health_1 = scr_change_numbers(restore_amount,card_state.x+global.health_offset_x,card_state.y+328);
card_state.health_locale += restore_amount;
	
seq_change_health_2 = scr_change_numbers(channel_boost,card_state.x+global.channel_offset_x,card_state.y + 328);
if card_state.frozen = true {
	if card_state.memory_channel != 0 {
		card_state.memory_channel += channel_boost;
	}
} else {
	if card_state.channel != 0 {
		card_state.channel += channel_boost;
	}
}
	
alarm[1] = 100;

