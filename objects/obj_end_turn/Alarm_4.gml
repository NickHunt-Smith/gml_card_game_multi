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

if global.player_locale_3 != noone && global.opp_locale_3 != noone {
	if global.player_locale_3.shielded = true && global.opp_locale_3.channel > 0 {
		shield_seq_1 = layer_sequence_create("effect_layer",global.player_locale_3.x + 111,global.player_locale_3.y + 184,seq_shield_break);
		global.player_locale_3.shielded = false;
		alarm[6] = 65;
	} else {
		seq_change_health_1 = scr_change_numbers(-global.opp_locale_3.channel,global.player_locale_3.x+global.health_offset_x,global.player_locale_3.y + 328);
		global.player_locale_3.health_locale -= global.opp_locale_3.channel;
	}
	if global.opp_locale_3.shielded = true && global.player_locale_3.channel > 0 {
		shield_seq_2 = layer_sequence_create("effect_layer",global.opp_locale_3.x + 111,global.opp_locale_3.y + 184,seq_shield_break);
		global.opp_locale_3.shielded = false;
		alarm[6] = 65;
	} else {
		seq_change_health_2 = scr_change_numbers(-global.player_locale_3.channel,global.opp_locale_3.x+global.health_offset_x,global.opp_locale_3.y + 328);
		global.opp_locale_3.health_locale -= global.player_locale_3.channel;
	}
}

if global.player_locale_4 != noone && global.opp_locale_4 != noone {
	if global.player_locale_4.element = 0 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_4.x+112,global.player_locale_4.y+75,seq_combat_ruby);
	} else if global.player_locale_4.element = 1 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_4.x+112,global.player_locale_4.y+75,seq_combat_pearl);
	} else if global.player_locale_4.element = 2 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_4.x+112,global.player_locale_4.y+75,seq_combat_onyx);
	}
	if global.opp_locale_4.element = 0 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_4.x+112,global.opp_locale_4.y+277,seq_combat_ruby);
	} else if global.opp_locale_4.element = 1 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_4.x+112,global.opp_locale_4.y+277,seq_combat_pearl);
	} else if global.opp_locale_4.element = 2 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_4.x+112,global.opp_locale_4.y+277,seq_combat_onyx);
	}
	layer_sequence_angle(combat_seq_opp,180);
	layer_sequence_xscale(combat_seq_player,0.43);
	layer_sequence_yscale(combat_seq_player,0.43);
	layer_sequence_xscale(combat_seq_opp,0.43);
	layer_sequence_yscale(combat_seq_opp,0.43);
	player_scale = 2*((global.player_locale_4.channel)/(global.player_locale_4.channel+global.opp_locale_4.channel))
	opp_scale = 2*((global.opp_locale_4.channel)/(global.player_locale_4.channel+global.opp_locale_4.channel))
	alarm[1] = 14;
	alarm[5] = 120;
} else if global.player_locale_4 != noone {
	if global.player_locale_4.frozen = false {
		global.player_locale_4.channel += 1;
	} else {
		global.player_locale_4.memory_channel += 1;
	}
	channel_up_seq = layer_sequence_create("effect_layer",global.player_locale_4.x+112,global.player_locale_4.y+184,seq_channel_up);
	var seq_change_health = scr_change_numbers(1,global.player_locale_4.x+26,global.player_locale_4.y + 328);
	alarm[5] = 100;
} else if global.opp_locale_4 != noone {
	if global.opp_locale_4.frozen = false {
		global.opp_locale_4.channel += 1;
	} else {
		global.opp_locale_4.memory_channel += 1;
	}
	channel_up_seq = layer_sequence_create("effect_layer",global.opp_locale_4.x+112,global.opp_locale_4.y+184,seq_channel_up);
	var seq_change_health = scr_change_numbers(1,global.opp_locale_4.x+26,global.opp_locale_4.y + 328);
	alarm[5] = 100;
} else {
	alarm[5] = 1;
}