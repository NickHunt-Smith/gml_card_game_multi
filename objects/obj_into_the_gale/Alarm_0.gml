/// @description Insert description here
// You can write your code in this editor

if snow != noone {
	part_system_destroy(snow);
	snow = noone;
}

if seal != noone {
	layer_sequence_destroy(seal);
	seal = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

wait = false;
eff_done = true;