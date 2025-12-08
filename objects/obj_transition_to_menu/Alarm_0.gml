if portal_seq_1 != noone {
	layer_sequence_destroy(portal_seq_1);
	portal_seq_1 = noone;
}

global.disable_buttons = false;
instance_destroy();