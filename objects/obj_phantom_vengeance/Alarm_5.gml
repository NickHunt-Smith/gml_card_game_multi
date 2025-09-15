
if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}

if seq_change_health_2 != noone {
	layer_sequence_destroy(seq_change_health_2);
}

if skip_target = false && target_1 != noone {
	target_1.clashed = true;
}
if skip_target = false && target_2 != noone {
	target_2.clashed = true;
}

if target_1 != noone and target_2 != noone {
	if target_1.health_locale > 0 and target_2.health_locale > 0 {
		fortify_seq_1 = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
		seq_restore_change_1 = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
		target_1.health_locale += restore_amount;
		alarm[0] = 100;
		
		fortify_seq_2 = layer_sequence_create("effect_layer",target_2.x+112,target_2.y+230,seq_fortify)
		seq_restore_change_2 = scr_change_numbers(restore_amount,target_2.x+global.health_offset_x,target_2.y+328);
		target_2.health_locale += restore_amount;
		alarm[0] = 100;
	}
}