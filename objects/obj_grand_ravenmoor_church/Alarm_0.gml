/// @description Insert description here
// You can write your code in this editor

if seq_change != noone {
	layer_sequence_destroy(seq_change);
	seq_change = noone;
}

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
	channel_seq = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

if sacrifice_2 != noone {
	layer_sequence_destroy(sacrifice_2);
	sacrifice_2 = noone;
}

if skip_target_2 = false && eff_type = "play" {
	target_2.health_locale = 0;
	card_state.channel += channel_bonus;
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}