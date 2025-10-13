/// @description Insert description here
// You can write your code in this editor

target_1.rarity = 4;

fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
seq_restore_change_1 = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
target_1.health_locale += restore_amount;

seq_restore_change_2 = scr_change_numbers(restore_amount,target_1.x+global.channel_offset_x,target_1.y+328);
if target_1.frozen = true {
	target_1.memory_channel += restore_amount;
} else {
	target_1.channel += restore_amount;
}

alarm[0] = 48;