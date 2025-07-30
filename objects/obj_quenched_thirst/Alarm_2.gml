/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
	var seq_restore_change = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
	target_1.health_locale += restore_amount;
	alarm[0] = 100;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

