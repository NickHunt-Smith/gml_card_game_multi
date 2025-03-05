/// @description Insert description here
// You can write your code in this editor

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
}

if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
}


if eff_type = "play" && skip_target_2 = false {
	var total_damage = 0;
	if opp = true {
		total_damage = play_damage_2 + global.opponent.ruby_bonus_spell_damage;
		global.opponent.ruby_spell_damage += abs(total_damage);
	} else {
		total_damage = play_damage_2 + global.player.ruby_bonus_spell_damage;
		global.player.ruby_spell_damage += abs(total_damage);
	}
	if target_2.shielded = true && total_damage != 0 {
		shield_seq = layer_sequence_create("effect_layer",target_2.x + 111,target_2.y + 184,seq_shield_break);
		target_2.shielded = false;
		alarm[0] = 65;
	} else {
	
		seq_change_health_2 = scr_change_numbers(total_damage,target_2.x+global.health_offset_x,target_2.y + 328);
		target_2.health_locale += total_damage;
		alarm[0] = 30;
	}
} else {
	alarm[0] = 30;
}

