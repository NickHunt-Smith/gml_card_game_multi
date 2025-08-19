/// @description Insert description here
// You can write your code in this editor

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if beam != noone {
	layer_sequence_destroy(beam);
	beam = noone;
}

wait = false;
eff_done = true;