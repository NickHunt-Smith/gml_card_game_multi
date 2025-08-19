/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
	shield_seq = noone;
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
	seq_change_health_1 = noone;
}

wait = false;
eff_done = true;