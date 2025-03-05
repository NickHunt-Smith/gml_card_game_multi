/// @description Insert description here
// You can write your code in this editor

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if target_1.destroyed = false {

	fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
	seq_restore_change = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
	target_1.health_locale += restore_amount;
}

alarm[0] = 80;