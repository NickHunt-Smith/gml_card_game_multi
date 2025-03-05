/// @description Insert description here
// You can write your code in this editor

if clash != noone {
	layer_sequence_destroy(clash);
	clash = noone;
}

if strike_1 != noone {
	layer_sequence_destroy(strike_1);
	strike_1 = noone;
}

target_1_health = target_1.channel;
target_2_health = target_2.channel;

strike_2 = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_strike);

if target_2.shielded = true && target_1_health != 0 {
	shield_seq = layer_sequence_create("effect_layer",target_2.x + 111,target_2.y + 184,seq_shield_break);
	target_2.shielded = false;
	alarm[5] = 65;
} else {
	seq_change_health_1 = scr_change_numbers(-target_1_health,target_2.x+global.health_offset_x,target_2.y + 328);
	target_2.health_locale -= target_1_health;

	alarm[5] = 40;
}