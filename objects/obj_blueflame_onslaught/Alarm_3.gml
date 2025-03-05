/// @description Insert description here
// You can write your code in this editor

if clash != noone {
	layer_sequence_destroy(clash);
	clash = noone;
}

if opp = true {
	if global.player_locale_1 != noone {
		dom_1 = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+184,seq_dominate_enemy);
	}
	if global.player_locale_2 != noone {
		dom_2 = layer_sequence_create("effect_layer",global.player_locale_2.x+112,global.player_locale_2.y+184,seq_dominate_enemy);
	}
	if global.player_locale_3 != noone {
		dom_3 = layer_sequence_create("effect_layer",global.player_locale_3.x+112,global.player_locale_3.y+184,seq_dominate_enemy);
	}
	if global.player_locale_4 != noone {
		dom_4 = layer_sequence_create("effect_layer",global.player_locale_4.x+112,global.player_locale_4.y+184,seq_dominate_enemy);
	}
} else {
	if global.opp_locale_1 != noone {
		dom_1 = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+184,seq_dominate_enemy);
	}
	if global.opp_locale_2 != noone {
		dom_2 = layer_sequence_create("effect_layer",global.opp_locale_2.x+112,global.opp_locale_2.y+184,seq_dominate_enemy);
	}
	if global.opp_locale_3 != noone {
		dom_3 = layer_sequence_create("effect_layer",global.opp_locale_3.x+112,global.opp_locale_3.y+184,seq_dominate_enemy);
	}
	if global.opp_locale_4 != noone {
		dom_4 = layer_sequence_create("effect_layer",global.opp_locale_4.x+112,global.opp_locale_4.y+184,seq_dominate_enemy);
	}
}

alarm[1] = 50;