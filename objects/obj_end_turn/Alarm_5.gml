/// @description Insert description here
// You can write your code in this editor

if combat_seq_player != noone {
	layer_sequence_destroy(combat_seq_player);
	combat_seq_player = noone;
}
if combat_seq_opp != noone {
	layer_sequence_destroy(combat_seq_opp);
	combat_seq_opp = noone;
}
if channel_up_seq != noone {
	layer_sequence_destroy(channel_up_seq);
	channel_up_seq = noone;
}
if seq_change_health_1 != noone {
	layer_sequence_destroy(seq_change_health_1);
	seq_change_health_1 = noone;
}
if seq_change_health_2 != noone {
	layer_sequence_destroy(seq_change_health_2);
	seq_change_health_2 = noone;
}

if global.player_locale_4 != noone && global.opp_locale_4 != noone {
	if global.player_locale_4.shielded = true && global.opp_locale_4.channel > 0 {
		shield_seq_1 = layer_sequence_create("effect_layer",global.player_locale_4.x + 111,global.player_locale_4.y + 184,seq_shield_break);
		global.player_locale_4.shielded = false;
		alarm[6] = 65;
	} else {
		seq_change_health_1 = scr_change_numbers(-global.opp_locale_4.channel,global.player_locale_4.x+global.health_offset_x,global.player_locale_4.y + 328);
		global.player_locale_4.health_locale -= global.opp_locale_4.channel;
	}
	if global.opp_locale_4.shielded = true && global.player_locale_4.channel > 0 {
		shield_seq_2 = layer_sequence_create("effect_layer",global.opp_locale_4.x + 111,global.opp_locale_4.y + 184,seq_shield_break);
		global.opp_locale_4.shielded = false;
		alarm[6] = 65;
	} else {
		seq_change_health_2 = scr_change_numbers(-global.player_locale_4.channel,global.opp_locale_4.x+global.health_offset_x,global.opp_locale_4.y + 328);
		global.opp_locale_4.health_locale -= global.player_locale_4.channel;
	}
	alarm[7] = 80;
} else {
	alarm[7] = 1;
}

