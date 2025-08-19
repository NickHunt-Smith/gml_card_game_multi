if clash != noone {
	layer_sequence_destroy(clash);
	clash = noone;
}

clash = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_dominate_enemy); 

alarm[1] = 50;