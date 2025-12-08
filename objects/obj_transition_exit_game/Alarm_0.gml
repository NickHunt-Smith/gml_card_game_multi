if portal_seq_1 != noone {
	layer_sequence_destroy(portal_seq_1);
	portal_seq_1 = noone;
}

global.background_angle = background_angle;

if global.pvp_active = true {
	room_goto(Menu);
} else {
	room_goto(Map);
}