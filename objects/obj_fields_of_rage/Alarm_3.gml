/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if strike_2 != noone {
	layer_sequence_destroy(strike_2);
	strike_2 = noone;
}

if card_state.shielded = true && target_2_health != 0 {
	shield_seq = layer_sequence_create("effect_layer",card_state.x + 111,card_state.y + 184,seq_shield_break);
	card_state.shielded = false;
	alarm[0] = 65;
} else {
	seq_change_health_2 = scr_change_numbers(-target_2_health,card_state.x+global.health_offset_x,card_state.y + 328);
	card_state.health_locale -= target_2_health;
	alarm[0] = 30;
}