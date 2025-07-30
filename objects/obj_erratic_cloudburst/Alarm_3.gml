/// @description Insert description here
// You can write your code in this editor

seq_change_health_1 = scr_change_numbers(channel_reduce,target_1.x+global.channel_offset_x,target_1.y + 328);
if target_1.frozen = true {
	if target_1.memory_channel != 0 {
		target_1.memory_channel += channel_reduce;
	}
} else {
	if target_1.channel != 0 {
		target_1.channel += channel_reduce;
	}
}

fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
seq_change_health_2 = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
target_1.health_locale += restore_amount;

alarm[0] = 60;