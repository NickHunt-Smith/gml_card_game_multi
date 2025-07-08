/// @description Insert description here
// You can write your code in this editor

if global.player_locale_1 != noone && global.opp_locale_1 != noone {
	if global.player_locale_1.element = 0 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_ruby);
	} else if global.player_locale_1.element = 1 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_pearl);
	} else if global.player_locale_1.element = 2 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_onyx);
	} else if global.player_locale_1.element = 3 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_sapphire);
	} else if global.player_locale_1.element = 4 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_emerald);
	} else if global.player_locale_1.element = 5 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_citrine);
	} else if global.player_locale_1.element = 6 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_opal);
	} else if global.player_locale_1.element = 7 {
		combat_seq_player = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+75,seq_combat_amethyst);
	}
	if global.opp_locale_1.element = 0 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_ruby);
	} else if global.opp_locale_1.element = 1 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_pearl);
	} else if global.opp_locale_1.element = 2 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_onyx);
	} else if global.opp_locale_1.element = 3 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_sapphire);
	} else if global.opp_locale_1.element = 4 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_emerald);
	} else if global.opp_locale_1.element = 5 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_citrine);
	} else if global.opp_locale_1.element = 6 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_opal);
	} else if global.opp_locale_1.element = 7 {
		combat_seq_opp = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+277,seq_combat_amethyst);
	}
	layer_sequence_angle(combat_seq_opp,180);
	layer_sequence_xscale(combat_seq_player,0.43);
	layer_sequence_yscale(combat_seq_player,0.43);
	layer_sequence_xscale(combat_seq_opp,0.43);
	layer_sequence_yscale(combat_seq_opp,0.43);
	player_scale = 2*((global.player_locale_1.channel)/(global.player_locale_1.channel+global.opp_locale_1.channel))
	opp_scale = 2*((global.opp_locale_1.channel)/(global.player_locale_1.channel+global.opp_locale_1.channel))
	alarm[1] = 14;
	alarm[2] = 120;
} else if global.player_locale_1 != noone {
	if global.player_locale_1.frozen = false {
		global.player_locale_1.channel += 1;
	} else {
		global.player_locale_1.memory_channel += 1;
	}
	channel_up_seq = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+184,seq_channel_up);
	var seq_change_health = scr_change_numbers(1,global.player_locale_1.x+26,global.player_locale_1.y + 328);
	alarm[2] = 100;
} else if global.opp_locale_1 != noone {
	if global.opp_locale_1.frozen = false {
		global.opp_locale_1.channel += 1;
	} else {
		global.opp_locale_1.memory_channel += 1;
	}
	channel_up_seq = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+184,seq_channel_up);
	var seq_change_health = scr_change_numbers(1,global.opp_locale_1.x+26,global.opp_locale_1.y + 328);
	alarm[2] = 100;
} else {
	alarm[2] = 1;
}