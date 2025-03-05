/// @description Insert description here
// You can write your code in this editor

if dom_1 != noone {
	layer_sequence_destroy(dom_1);
	dom_1 = noone;
}

if dom_2 != noone {
	layer_sequence_destroy(dom_2);
	dom_2 = noone;
}

if dom_3 != noone {
	layer_sequence_destroy(dom_3);
	dom_3 = noone;
}

if dom_4 != noone {
	layer_sequence_destroy(dom_4);
	dom_4 = noone;
}

target_1_health = target_1.channel;
if opp = true {
	if global.player_locale_1 != noone {
		if global.player_locale_1.shielded = true && target_1_health != 0{
			shield_seq_1 = layer_sequence_create("effect_layer",global.player_locale_1.x + 111,global.player_locale_1.y + 184,seq_shield_break);
			global.player_locale_1.shielded = false;
		} else {
			seq_change_health_1 = scr_change_numbers(-target_1_health,global.player_locale_1.x+111,global.player_locale_1.y + 328);
			global.player_locale_1.health_locale -= target_1_health;
		}
		global.player_locale_1.clashed = true;
	}
	if global.player_locale_2 != noone {
		if global.player_locale_2.shielded = true && target_1_health != 0{
			shield_seq_2 = layer_sequence_create("effect_layer",global.player_locale_2.x + 111,global.player_locale_2.y + 184,seq_shield_break);
			global.player_locale_2.shielded = false;
		} else {
			seq_change_health_2 = scr_change_numbers(-target_1_health,global.player_locale_2.x+111,global.player_locale_2.y + 328);
			global.player_locale_2.health_locale -= target_1_health;
		}
	}
	if global.player_locale_3 != noone {
		if global.player_locale_3.shielded = true && target_1_health != 0{
			shield_seq_3 = layer_sequence_create("effect_layer",global.player_locale_3.x + 111,global.player_locale_3.y + 184,seq_shield_break);
			global.player_locale_3.shielded = false;
		} else {
			seq_change_health_3 = scr_change_numbers(-target_1_health,global.player_locale_3.x+111,global.player_locale_3.y + 328);
			global.player_locale_3.health_locale -= target_1_health;
		}
	}
	if global.player_locale_4 != noone {
		if global.player_locale_4.shielded = true && target_1_health != 0{
			shield_seq_4 = layer_sequence_create("effect_layer",global.player_locale_4.x + 111,global.player_locale_4.y + 184,seq_shield_break);
			global.player_locale_4.shielded = false;
		} else {
			seq_change_health_4 = scr_change_numbers(-target_1_health,global.player_locale_4.x+111,global.player_locale_4.y + 328);
			global.player_locale_4.health_locale -= target_1_health;
		}
	}
} else {
	if global.opp_locale_1 != noone {
		if global.opp_locale_1.shielded = true && target_1_health != 0{
			shield_seq_1 = layer_sequence_create("effect_layer",global.opp_locale_1.x + 111,global.opp_locale_1.y + 184,seq_shield_break);
			global.opp_locale_1.shielded = false;
		} else {
			seq_change_health_1 = scr_change_numbers(-target_1_health,global.opp_locale_1.x+111,global.opp_locale_1.y + 328);
			global.opp_locale_1.health_locale -= target_1_health;
		}
	}
	if global.opp_locale_2 != noone {
		if global.opp_locale_2.shielded = true && target_1_health != 0{
			shield_seq_2 = layer_sequence_create("effect_layer",global.opp_locale_2.x + 111,global.opp_locale_2.y + 184,seq_shield_break);
			global.opp_locale_2.shielded = false;
		} else {
			seq_change_health_2 = scr_change_numbers(-target_1_health,global.opp_locale_2.x+111,global.opp_locale_2.y + 328);
			global.opp_locale_2.health_locale -= target_1_health;
		}
	}
	if global.opp_locale_3 != noone {
		if global.opp_locale_3.shielded = true && target_1_health != 0{
			shield_seq_3 = layer_sequence_create("effect_layer",global.opp_locale_3.x + 111,global.opp_locale_3.y + 184,seq_shield_break);
			global.opp_locale_3.shielded = false;
		} else {
			seq_change_health_3 = scr_change_numbers(-target_1_health,global.opp_locale_3.x+111,global.opp_locale_3.y + 328);
			global.opp_locale_3.health_locale -= target_1_health;
		}
	}
	if global.opp_locale_4 != noone {
		if global.opp_locale_4.shielded = true && target_1_health != 0{
			shield_seq_4 = layer_sequence_create("effect_layer",global.opp_locale_4.x + 111,global.opp_locale_4.y + 184,seq_shield_break);
			global.opp_locale_4.shielded = false;
		} else {
			seq_change_health_4 = scr_change_numbers(-target_1_health,global.opp_locale_4.x+111,global.opp_locale_4.y + 328);
			global.opp_locale_4.health_locale -= target_1_health;
		}
	}
}


alarm[0] = 65;