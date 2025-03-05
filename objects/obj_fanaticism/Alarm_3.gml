/// @description Insert description here
// You can write your code in this editor

if dark_strike != noone {
	layer_sequence_destroy(dark_strike);
	dark_strike = noone;
}

if eff_type = "play" && skip_target_2 = false {
	if target_2.shielded = true {
		shield_seq = layer_sequence_create("effect_layer",target_2.x + 111,target_2.y + 184,seq_shield_break);
		target_2.shielded = false;
		alarm[0] = 65;
	} else {
		var total_damage = play_damage_2;
	
		seq_change_health_2 = scr_change_numbers(total_damage,target_2.x+global.health_offset_x,target_2.y + 328);
		target_2.health_locale += total_damage;
		alarm[0] = 50;
	}
} 

