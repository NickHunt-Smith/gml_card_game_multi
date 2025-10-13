/// @description Insert description here
// You can write your code in this editor

if reroll_circle != noone {
	part_emitter_destroy_all(reroll_circle);
}

if reroll_laser != noone {
	layer_sequence_destroy(reroll_laser);
	reroll_laser = noone;
}

wait = false;
eff_done = true;