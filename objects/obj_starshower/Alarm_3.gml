/// @description Insert description here
// You can write your code in this editor

var total_damage = 0;
if opp = true {
	total_damage = play_damage_1 + global.opponent.ruby_bonus_spell_damage;
	global.opponent.ruby_spell_damage += abs(total_damage);
} else {
	total_damage = play_damage_1 + global.player.ruby_bonus_spell_damage;
	global.player.ruby_spell_damage += abs(total_damage);
}

if global.player_locale_1 != noone {
	if global.player_locale_1.shielded = true && total_damage != 0 {
		shield_seq_1 = layer_sequence_create("effect_layer",global.player_locale_1.x + 111,global.player_locale_1.y + 184,seq_shield_break);
		global.player_locale_1.shielded = false;
	} else {
		seq_change_1 = scr_change_numbers(total_damage,global.player_locale_1.x+global.health_offset_x,global.player_locale_1.y+328);
		global.player_locale_1.health_locale += total_damage + global.player.ruby_bonus_spell_damage;
	}
}
if global.player_locale_2 != noone {
	if global.player_locale_2.shielded = true && total_damage != 0{
		shield_seq_2 = layer_sequence_create("effect_layer",global.player_locale_2.x + 111,global.player_locale_2.y + 184,seq_shield_break);
		global.player_locale_2.shielded = false;
	} else {
		seq_change_2 = scr_change_numbers(total_damage,global.player_locale_2.x+global.health_offset_x,global.player_locale_2.y+328);
		global.player_locale_2.health_locale += total_damage + global.player.ruby_bonus_spell_damage;
	}
}
if global.player_locale_3 != noone {
	if global.player_locale_3.shielded = true && total_damage != 0{
		shield_seq_3 = layer_sequence_create("effect_layer",global.player_locale_3.x + 111,global.player_locale_3.y + 184,seq_shield_break);
		global.player_locale_3.shielded = false;
	} else {
		seq_change_3 = scr_change_numbers(total_damage,global.player_locale_3.x+global.health_offset_x,global.player_locale_3.y+328);
		global.player_locale_3.health_locale += total_damage + global.player.ruby_bonus_spell_damage;
	}
}
if global.player_locale_4 != noone {
	if global.player_locale_4.shielded = true && total_damage != 0{
		shield_seq_4 = layer_sequence_create("effect_layer",global.player_locale_4.x + 111,global.player_locale_4.y + 184,seq_shield_break);
		global.player_locale_4.shielded = false;
	} else {
		seq_change_4 = scr_change_numbers(total_damage,global.player_locale_4.x+global.health_offset_x,global.player_locale_4.y+328);
		global.player_locale_4.health_locale += total_damage + global.player.ruby_bonus_spell_damage;
	}
}
if global.opp_locale_1 != noone {
	if global.opp_locale_1.shielded = true && total_damage != 0{
		shield_seq_5 = layer_sequence_create("effect_layer",global.opp_locale_1.x + 111,global.opp_locale_1.y + 184,seq_shield_break);
		global.opp_locale_1.shielded = false;
	} else {
		seq_change_5 = scr_change_numbers(total_damage,global.opp_locale_1.x+global.health_offset_x,global.opp_locale_1.y+328);
		global.opp_locale_1.health_locale += total_damage + global.opponent.ruby_bonus_spell_damage;
	}
}
if global.opp_locale_2 != noone {
	if global.opp_locale_2.shielded = true && total_damage != 0{
		shield_seq_6 = layer_sequence_create("effect_layer",global.opp_locale_2.x + 111,global.opp_locale_2.y + 184,seq_shield_break);
		global.opp_locale_2.shielded = false;
	} else {
		seq_change_6 = scr_change_numbers(total_damage,global.opp_locale_2.x+global.health_offset_x,global.opp_locale_2.y+328);
		global.opp_locale_2.health_locale += total_damage + global.opponent.ruby_bonus_spell_damage;
	}
}
if global.opp_locale_3 != noone {
	if global.opp_locale_3.shielded = true && total_damage != 0{
		shield_seq_7 = layer_sequence_create("effect_layer",global.opp_locale_3.x + 111,global.opp_locale_3.y + 184,seq_shield_break);
		global.opp_locale_3.shielded = false;
	} else {
		seq_change_7 = scr_change_numbers(total_damage,global.opp_locale_3.x+global.health_offset_x,global.opp_locale_3.y+328);
		global.opp_locale_3.health_locale += total_damage + global.opponent.ruby_bonus_spell_damage;
	}
}
if global.opp_locale_4 != noone {
	if global.opp_locale_4.shielded = true && total_damage != 0{
		shield_seq_8 = layer_sequence_create("effect_layer",global.opp_locale_4.x + 111,global.opp_locale_4.y + 184,seq_shield_break);
		global.opp_locale_4.shielded = false;
	} else {
		seq_change_8 = scr_change_numbers(total_damage,global.opp_locale_4.x+global.health_offset_x,global.opp_locale_4.y+328);
		global.opp_locale_4.health_locale += total_damage + global.opponent.ruby_bonus_spell_damage;
	}
}

alarm[0] = 100;