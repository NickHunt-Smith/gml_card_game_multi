/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	target_1.shielded = true;
}

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
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

wait = false;
eff_done = true;