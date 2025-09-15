
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

if shield != noone {
	layer_sequence_destroy(shield);
	shield = noone;
}

card_state.shielded = true;
card_state.illusory = true;

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}