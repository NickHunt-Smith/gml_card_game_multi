/// @description Insert description here
// You can write your code in this editor

if wave_seq != noone {
	layer_sequence_destroy(wave_seq);
	wave_seq = noone;
}

if fortify_seq != noone {
	layer_sequence_destroy(fortify_seq);
	fortify_seq = noone;
}

wave_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_wave);
alarm[4] = 30;