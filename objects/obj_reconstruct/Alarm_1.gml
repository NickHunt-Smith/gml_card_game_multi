

var diff_channel = global.rarity_list[target_1.initial_rarity][target_1.initial_element][0][3][target_1.card_index] - target_1.channel
var diff_strength = global.rarity_list[target_1.initial_rarity][target_1.initial_element][0][2][target_1.card_index] - target_1.health_locale

fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify);
seq_restore_change_1 = scr_change_numbers(diff_strength,target_1.x+global.health_offset_x,target_1.y+328);
seq_restore_change_2 = scr_change_numbers(diff_channel,target_1.x+global.channel_offset_x,target_1.y+328); 

if target_1.frozen = true {
	target_1.memory_channel = target_1.channel + diff_channel;
} else {
	target_1.channel += diff_channel;
}
target_1.health_locale += diff_strength;

alarm[0] = 80;