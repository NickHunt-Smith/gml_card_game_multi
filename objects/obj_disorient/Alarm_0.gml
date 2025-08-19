/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(sacrifices); _i++) {
	layer_sequence_destroy(sacrifices[_i]);
}
sacrifices = [];

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;