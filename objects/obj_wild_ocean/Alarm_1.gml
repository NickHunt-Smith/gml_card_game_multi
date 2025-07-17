

if wave_seq != noone {
	layer_sequence_destroy(wave_seq);
	wave_seq = noone;
}

global.lingering_active = false;
instance_destroy();