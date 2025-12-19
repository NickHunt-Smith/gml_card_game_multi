if portal_seq_1 != noone {
	layer_sequence_destroy(portal_seq_1);
	portal_seq_1 = noone;
}

global.music_controller.music_curr = snd_map_music;

instance_destroy();