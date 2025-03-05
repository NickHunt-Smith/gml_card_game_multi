/// @description Insert description here
// You can write your code in this editor

if shield_seq_1 != noone {
	layer_sequence_destroy(shield_seq_1);
}

if shield_seq_2 != noone {
	layer_sequence_destroy(shield_seq_2);
}

if shield_seq_3 != noone {
	layer_sequence_destroy(shield_seq_3);
}

if shield_seq_4 != noone {
	layer_sequence_destroy(shield_seq_4);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
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

if seq_change_health_3 != noone {
	layer_sequence_destroy(seq_change_health_3);
}

if seq_change_health_4 != noone {
	layer_sequence_destroy(seq_change_health_4);
}

target_1.clashed = true;

wait = false;
eff_done = true;