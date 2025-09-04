/// @description Insert description here
// You can write your code in this editor

if time_seq != noone {
	layer_sequence_destroy(time_seq);
	time_seq = noone;
}

global.skip_combat = true;

wait = false;
eff_done = true;