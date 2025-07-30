/// @description Insert description here
// You can write your code in this editor

if switch_seq != noone {
	layer_sequence_destroy(switch_seq);
	switch_seq = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

wait = false;
eff_done = true;