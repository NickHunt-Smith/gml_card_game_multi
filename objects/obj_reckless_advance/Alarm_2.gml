/// @description Insert description here
// You can write your code in this editor

if explode != noone {
	layer_sequence_destroy(explode);
}

var total_damage = 0;
if opp = true {
	total_damage = play_damage_1 + global.opponent.ruby_bonus_spell_damage;
	global.opponent.ruby_spell_damage += abs(total_damage);
} else {
	total_damage = play_damage_1 + global.player.ruby_bonus_spell_damage;
	global.player.ruby_spell_damage += abs(total_damage);
}

if target_1.shielded = true && total_damage != 0{
	shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
	target_1.shielded = false;
} else {
	
	seq_change_health_1 = scr_change_numbers(total_damage,target_1.x+global.health_offset_x,target_1.y + 328);
	target_1.health_locale += total_damage;
}

clash = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_clash);
alarm[4] = 60;

