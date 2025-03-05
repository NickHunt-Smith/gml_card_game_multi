/// @description Insert description here
// You can write your code in this editor

if global.player_locale_1 != noone {
	if global.player_locale_1.shielded = true {
		shield_seq_1 = layer_sequence_create("effect_layer",global.player_locale_1.x + 111,global.player_locale_1.y + 184,seq_shield_break);
		global.player_locale_1.shielded = false;
	} else {
		seq_change_1 = scr_change_numbers(play_damage_1,global.player_locale_1.x+global.health_offset_x,global.player_locale_1.y+328);
		global.player_locale_1.health_locale += play_damage_1;
	}
	if global.player_locale_1.frozen = false {
		global.player_locale_1.frozen = true;
		global.player_locale_1.memory_channel = global.player_locale_1.channel;
		global.player_locale_1.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.player_locale_2 != noone {
	if global.player_locale_2.shielded = true {
		shield_seq_2 = layer_sequence_create("effect_layer",global.player_locale_2.x + 111,global.player_locale_2.y + 184,seq_shield_break);
		global.player_locale_2.shielded = false;
	} else {
		seq_change_2 = scr_change_numbers(play_damage_1,global.player_locale_2.x+global.health_offset_x,global.player_locale_2.y+328);
		global.player_locale_2.health_locale += play_damage_1;
	}
	if global.player_locale_2.frozen = false {
		global.player_locale_2.frozen = true;
		global.player_locale_2.memory_channel = global.player_locale_2.channel;
		global.player_locale_2.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.player_locale_3 != noone {
	if global.player_locale_3.shielded = true {
		shield_seq_3 = layer_sequence_create("effect_layer",global.player_locale_3.x + 111,global.player_locale_3.y + 184,seq_shield_break);
		global.player_locale_3.shielded = false;
	} else {
		seq_change_3 = scr_change_numbers(play_damage_1,global.player_locale_3.x+global.health_offset_x,global.player_locale_3.y+328);
		global.player_locale_3.health_locale += play_damage_1;
	}
	if global.player_locale_3.frozen = false {
		global.player_locale_3.frozen = true;
		global.player_locale_3.memory_channel = global.player_locale_3.channel;
		global.player_locale_3.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.player_locale_4 != noone {
	if global.player_locale_4.shielded = true {
		shield_seq_4 = layer_sequence_create("effect_layer",global.player_locale_4.x + 111,global.player_locale_4.y + 184,seq_shield_break);
		global.player_locale_4.shielded = false;
	} else {
		seq_change_4 = scr_change_numbers(play_damage_1,global.player_locale_4.x+global.health_offset_x,global.player_locale_4.y+328);
		global.player_locale_4.health_locale += play_damage_1;
	}
	if global.player_locale_4.frozen = false {
		global.player_locale_4.frozen = true;
		global.player_locale_4.memory_channel = global.player_locale_4.channel;
		global.player_locale_4.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_1 != noone {
	if global.opp_locale_1.shielded = true {
		shield_seq_5 = layer_sequence_create("effect_layer",global.opp_locale_1.x + 111,global.opp_locale_1.y + 184,seq_shield_break);
		global.opp_locale_1.shielded = false;
	} else {
		seq_change_5 = scr_change_numbers(play_damage_1,global.opp_locale_1.x+global.health_offset_x,global.opp_locale_1.y+328);
		global.opp_locale_1.health_locale += play_damage_1;
	}
	if global.opp_locale_1.frozen = false {
		global.opp_locale_1.frozen = true;
		global.opp_locale_1.memory_channel = global.opp_locale_1.channel;
		global.opp_locale_1.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_2 != noone {
	if global.opp_locale_2.shielded = true {
		shield_seq_6 = layer_sequence_create("effect_layer",global.opp_locale_2.x + 111,global.opp_locale_2.y + 184,seq_shield_break);
		global.opp_locale_2.shielded = false;
	} else {
		seq_change_6 = scr_change_numbers(play_damage_1,global.opp_locale_2.x+global.health_offset_x,global.opp_locale_2.y+328);
		global.opp_locale_2.health_locale += play_damage_1;
	}
	if global.opp_locale_2.frozen = false {
		global.opp_locale_2.frozen = true;
		global.opp_locale_2.memory_channel = global.opp_locale_2.channel;
		global.opp_locale_2.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_3 != noone {
	if global.opp_locale_3.shielded = true {
		shield_seq_7 = layer_sequence_create("effect_layer",global.opp_locale_3.x + 111,global.opp_locale_3.y + 184,seq_shield_break);
		global.opp_locale_3.shielded = false;
	} else {
		seq_change_7 = scr_change_numbers(play_damage_1,global.opp_locale_3.x+global.health_offset_x,global.opp_locale_3.y+328);
		global.opp_locale_3.health_locale += play_damage_1;
	}
	if global.opp_locale_3.frozen = false {
		global.opp_locale_3.frozen = true;
		global.opp_locale_3.memory_channel = global.opp_locale_3.channel;
		global.opp_locale_3.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_4 != noone {
	if global.opp_locale_4.shielded = true {
		shield_seq_8 = layer_sequence_create("effect_layer",global.opp_locale_4.x + 111,global.opp_locale_4.y + 184,seq_shield_break);
		global.opp_locale_4.shielded = false;
	} else {
		seq_change_8 = scr_change_numbers(play_damage_1,global.opp_locale_4.x+global.health_offset_x,global.opp_locale_4.y+328);
		global.opp_locale_4.health_locale += play_damage_1;
	}
	if global.opp_locale_4.frozen = false {
		global.opp_locale_4.frozen = true;
		global.opp_locale_4.memory_channel = global.opp_locale_4.channel;
		global.opp_locale_4.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}

alarm[0] = 60;