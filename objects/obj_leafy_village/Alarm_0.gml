/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

if card_state.shielded = true {
	shield_seq = layer_sequence_create("effect_layer",card_state.x + 111,card_state.y + 184,seq_shield_break);
	card_state.shielded = false;
	alarm[1] = 65;
} else {
	seq_change_health_1 = scr_change_numbers(damage,card_state.x+global.health_offset_x,card_state.y + 328);
	card_state.health_locale += damage;
	alarm[1] = 30; 
}