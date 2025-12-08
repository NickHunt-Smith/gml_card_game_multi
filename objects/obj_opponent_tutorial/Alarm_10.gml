global.end_turn_active = true;

if combat_phase_seq != noone {
	layer_sequence_destroy(combat_phase_seq);
	combat_phase_seq = noone;
}