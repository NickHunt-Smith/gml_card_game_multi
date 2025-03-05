/// @description Insert description here
// You can write your code in this editor

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;