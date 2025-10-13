/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

if seq_change_health != noone {
	layer_sequence_destroy(seq_change_health);
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}