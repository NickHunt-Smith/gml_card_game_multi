/// @description Insert description here
// You can write your code in this editor

if dark_strike != noone {
	layer_sequence_destroy(dark_strike);
	dark_strike = noone;
}

if target_1.shielded = true {
	shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
	target_1.shielded = false;
	alarm[0] = 65;
} else {
	var total_damage = play_damage_1;
	seq_change_health_1 = scr_change_numbers(total_damage,target_1.x+global.health_offset_x,target_1.y + 328);
	target_1.health_locale += total_damage;
	alarm[0] = 50;
}

