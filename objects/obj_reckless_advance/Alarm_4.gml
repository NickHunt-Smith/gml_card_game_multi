/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}

if clash != noone {
	layer_sequence_destroy(clash);
	clash = noone;
}

strike_1 = layer_sequence_create("effect_layer",target_2.x +111,target_2.y + 184,seq_strike);
alarm[1] = 30;