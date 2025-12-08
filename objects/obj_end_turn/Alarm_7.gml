/// @description Insert description here
// You can write your code in this editor

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
	seq_change_health_1 = noone;
}
if seq_change_health_2 != noone {
	layer_sequence_destroy(seq_change_health_2);
	seq_change_health_2 = noone;
}

global.phase = "end";
end_phase_seq = layer_sequence_create("effect_layer",1522,754,seq_end_phase);
alarm[11] = 100;