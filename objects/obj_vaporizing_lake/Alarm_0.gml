/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
seq_change_health_1 = scr_change_numbers(restore_amount,card_state.x+global.health_offset_x,card_state.y+328);
card_state.health_locale += restore_amount;
	
seq_change_health_2 = scr_change_numbers(channel_boost,card_state.x+global.channel_offset_x,card_state.y + 328);
if target_1.frozen = true {
	target_1.memory_channel += channel_reduce;
	if target_1.memory_channel < 0 {
		target_1.memory_channel = 0
	}
} else {
	target_1.channel += channel_reduce;
	if target_1.channel < 0 {
		target_1.channel = 0
	}
}
	
alarm[1] = 100;

