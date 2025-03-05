/// @description Insert description here
// You can write your code in this editor

if dark_strike != noone {
	layer_sequence_destroy(dark_strike);
	dark_strike = noone;
}

if target_1.shielded = true {
	shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
	target_1.shielded = false;
} else {
	var total_damage = play_damage_1;
	seq_change_health_1 = scr_change_numbers(total_damage,target_1.x+global.health_offset_x,target_1.y + 328);
	target_1.health_locale += total_damage;
}

if target_1.health_locale != 0 {
	dark_strike = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_backstab);
	scr_sequence_target(dark_strike,target_1,opp,card_state);
	alarm[3] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

