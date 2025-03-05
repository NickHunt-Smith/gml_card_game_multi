/// @description Insert description here
// You can write your code in this editor

if backstab_seq != noone {
	layer_sequence_destroy(backstab_seq);
	backstab_seq = noone;
}

if instance_exists(target_1) {
	if target_1.shielded = true {
		shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
		target_1.shielded = false;
		alarm[1] = 65;
	} else {
		seq_change_health = scr_change_numbers(on_hit_damage,target_1.x+global.health_offset_x,target_1.y + 328);
		target_1.health_locale += on_hit_damage;
		alarm[1] = 30;
	}
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
	alarm[1] = 60;
}