/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if strike_2 != noone {
	layer_sequence_destroy(strike_2);
	strike_2 = noone;
}

target_2.clashed = true;

if target_1.shielded = true && target_2_health != 0 {
	shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
	target_1.shielded = false;
	alarm[0] = 65;
} else {
	seq_change_health_2 = scr_change_numbers(-target_2_health,target_1.x+global.health_offset_x,target_1.y + 328);
	target_1.health_locale -= target_2_health;
	alarm[0] = 30;
}