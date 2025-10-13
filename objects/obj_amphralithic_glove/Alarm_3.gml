/// @description Insert description here
// You can write your code in this editor

if target_1.rarity = 0 {
	target_1.rarity = 1
} else if target_1.rarity = 1 {
	target_1.rarity = 2
} else if target_1.rarity = 2 {
	target_1.rarity = 3
} else if target_1.rarity = 3 {
	target_1.rarity = 4
}

fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
seq_restore_change_1 = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
target_1.health_locale += restore_amount;

alarm[0] = 48;