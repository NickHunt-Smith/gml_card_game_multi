/// @description Insert description here
// You can write your code in this editor

if spiral != noone {
	part_system_destroy(spiral);
}

if firestorm != noone {
	layer_sequence_destroy(firestorm);
}

if shield_seq_1 != noone {
	layer_sequence_destroy(shield_seq_1);
}

if shield_seq_2 != noone {
	layer_sequence_destroy(shield_seq_2);
}

if shield_seq_3 != noone {
	layer_sequence_destroy(shield_seq_3);
}

if shield_seq_4 != noone {
	layer_sequence_destroy(shield_seq_4);
}

if shield_seq_5 != noone {
	layer_sequence_destroy(shield_seq_5);
}

if shield_seq_6 != noone {
	layer_sequence_destroy(shield_seq_6);
}

if shield_seq_7 != noone {
	layer_sequence_destroy(shield_seq_7);
}

if shield_seq_8 != noone {
	layer_sequence_destroy(shield_seq_8);
}

if seq_change_1 != noone {
	layer_sequence_destroy(seq_change_1);
}

if seq_change_2 != noone {
	layer_sequence_destroy(seq_change_2);
}

if seq_change_3 != noone {
	layer_sequence_destroy(seq_change_3);
}

if seq_change_4 != noone {
	layer_sequence_destroy(seq_change_4);
}

if seq_change_5 != noone {
	layer_sequence_destroy(seq_change_5);
}

if seq_change_6 != noone {
	layer_sequence_destroy(seq_change_6);
}

if seq_change_7 != noone {
	layer_sequence_destroy(seq_change_7);
}

if seq_change_8 != noone {
	layer_sequence_destroy(seq_change_8);
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}