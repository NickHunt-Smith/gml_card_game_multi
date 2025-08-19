/// @description Insert description here
// You can write your code in this editor

fortify_seqs = [];
seq_restore_change_1s = [];
seq_restore_change_2s = [];

for (var _i = 0; _i < array_length(targets); _i++) {

	var diff_channel = global.rarity_list[targets[_i].initial_rarity][targets[_i].initial_element][0][3][targets[_i].card_index] - targets[_i].channel
	var diff_strength = global.rarity_list[targets[_i].initial_rarity][targets[_i].initial_element][0][2][targets[_i].card_index] - targets[_i].health_locale
	
	array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
	array_push(seq_restore_change_1s,scr_change_numbers(diff_strength,targets[_i].x+global.health_offset_x,targets[_i].y+328));
	array_push(seq_restore_change_2s,scr_change_numbers(diff_channel,targets[_i].x+global.channel_offset_x,targets[_i].y+328)); 

	if targets[_i].frozen = true {
		targets[_i].memory_channel = targets[_i].channel + diff_channel;
	} else {
		targets[_i].channel += diff_channel;
	}
	targets[_i].health_locale += diff_strength;

}

alarm[3] = 80;