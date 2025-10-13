/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}

if skip_target = false {
	card_state.clashed = true;
	target_1.clashed = true;
}

wait = false;
eff_done = true;