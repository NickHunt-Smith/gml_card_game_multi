
if portal_seq_1 != noone {
	layer_sequence_destroy(portal_seq_1);
	portal_seq_1 = noone;
	portal_done_1 = true;
	portal_done_2 = false;
	portal_done_3 = false;
}

if portal_seq_2 != noone {
	layer_sequence_destroy(portal_seq_2);
	portal_seq_2 = noone;
	portal_done_1 = false;
	portal_done_2 = true;
	portal_done_3 = false;
}

if portal_seq_3 != noone {
	layer_sequence_destroy(portal_seq_3);
	portal_seq_3 = noone;
	portal_done_1 = false;
	portal_done_2 = false;
	portal_done_3 = true;
}

portal_in_progress = false;
radius_1 = 0;
radius_2 = 0;
radius_3 = 0;