/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if seq_change_health_2 != noone {
	layer_sequence_destroy(seq_change_health_2);
}

wait = false;
eff_done = true;