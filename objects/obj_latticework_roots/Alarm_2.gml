/// @description Insert description here
// You can write your code in this editor

if seq_no_target = noone {
	fortify_seqs = [];
	seq_restore_change_1s = [];
	for (var _i = 0; _i < array_length(targets); _i++) {
		array_push(fortify_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+230,seq_fortify));
		array_push(seq_restore_change_1s,scr_change_numbers(restore_amount,targets[_i].x+global.health_offset_x,targets[_i].y+328));
		targets[_i].health_locale += restore_amount;
	}
}

alarm[0] = 90;
