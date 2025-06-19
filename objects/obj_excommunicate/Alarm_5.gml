
if target_2 != noone {
	sacrifice = layer_sequence_create("effect_layer",target_2.x + 112,target_2.y + 184,seq_sacrifice);
	alarm[3] = 134;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}