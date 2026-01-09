/// @description Insert description here
// You can write your code in this editor

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
}


if eff_type = "play" && skip_target_1 = false {
	if target_1.shielded = true {
		shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
		target_1.shielded = false;
		alarm[0] = 65;
	} else {
	
		seq_change_health_1 = scr_change_numbers(play_damage_1,target_1.x+global.health_offset_x,target_1.y + 328);
		target_1.health_locale += play_damage_1;
		alarm[0] = 30;
	}
} else {
	alarm[0] = 30;
}