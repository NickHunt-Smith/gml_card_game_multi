
if wave_seq != noone {
	layer_sequence_destroy(wave_seq);
	wave_seq = noone;
}

array_delete(global.destroy_effects,0,1);

instance_destroy();