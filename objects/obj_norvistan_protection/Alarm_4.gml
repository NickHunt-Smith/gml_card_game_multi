
if switch_seq != noone {
	linger_1.switched = true;
	linger_2.switched = true;
	layer_sequence_destroy(switch_seq);
	switch_seq = noone;
}

if ball_seq_1 != noone {
	part_system_destroy(ball_seq_1);
	ball_seq_1 = noone;
}

if ball_seq_2 != noone {
	part_system_destroy(ball_seq_2);
	ball_seq_2 = noone;
}

fortify_seq_1 = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify)
seq_change_health_1 = scr_change_numbers(restore_amount,target_1.x+global.health_offset_x,target_1.y+328);
target_1.health_locale += restore_amount;

fortify_seq_2 = layer_sequence_create("effect_layer",target_2.x+112,target_2.y+230,seq_fortify)
seq_change_health_2 = scr_change_numbers(restore_amount,target_2.x+global.health_offset_x,target_2.y+328);
target_2.health_locale += restore_amount;
alarm[0] = 80;