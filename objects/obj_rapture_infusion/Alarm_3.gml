if consume_seq_1 != noone {
	layer_sequence_destroy(consume_seq_1);
	consume_seq_1 = noone;
}

if consume_seq_2 != noone {
	layer_sequence_destroy(consume_seq_2);
	consume_seq_2 = noone;
}

if seq_change_channel_1 != noone {
	layer_sequence_destroy(seq_change_channel_1);
	seq_change_channel_1 = noone;
}

if seq_change_channel_2 != noone {
	layer_sequence_destroy(seq_change_channel_2);
	seq_change_channel_2 = noone;
}

if consume_clouds_1 != noone {
	part_emitter_destroy_all(consume_clouds_1);
	consume_clouds_1 = noone;
}

if consume_clouds_2 != noone {
	part_emitter_destroy_all(consume_clouds_2);
	consume_clouds_2 = noone;
}

if skip_target_1 = false {
	channel_up_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_channel_up);
	seq_restore_change = scr_change_numbers(bonus_channel,target_1.x+global.channel_offset_x,target_1.y+328);
	if target_1.frozen = true {
		target_1.memory_channel += bonus_channel;
	} else {
		target_1.channel += bonus_channel;
	}
	alarm[0] = 100;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}