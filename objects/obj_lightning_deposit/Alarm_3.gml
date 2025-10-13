/// @description Insert description here
// You can write your code in this editor

if bolts_on_card != noone {
	part_emitter_destroy_all(bolts_on_card);
}

if bolt != noone {
	layer_sequence_destroy(bolt);
	bolt = noone;
}

if target_1.shielded = true {
	shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
	target_1.shielded = false;
	alarm[0] = 65;
} else {
	seq_change_health = scr_change_numbers(-card_state.rarity - 1,target_1.x+global.health_offset_x,target_1.y + 328);
	target_1.health_locale += -card_state.rarity - 1;
	alarm[0] = 30;
}