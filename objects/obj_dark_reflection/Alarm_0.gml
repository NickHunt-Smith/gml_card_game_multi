/// @description Insert description here
// You can write your code in this editor

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

if target_empty != noone {
	instance_destroy(target_empty);
	target_empty = noone;
}

wait = false;
eff_done = true;
