if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
	seq_change_health_1 = noone;
}

if seq_change_health_2 != noone {
	layer_sequence_destroy(seq_change_health_2);
	seq_change_health_2 = noone;
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}