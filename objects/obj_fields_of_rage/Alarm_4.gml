
if clash != noone {
	layer_sequence_destroy(clash);
	clash = noone;
}

strike_1 = layer_sequence_create("effect_layer",target_1.x +111,target_1.y + 184,seq_strike);
alarm[5] = 30;