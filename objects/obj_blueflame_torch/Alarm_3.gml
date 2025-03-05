/// @description Insert description here
// You can write your code in this editor

if opp = false {
	if global.player_locale_1 != noone {
		fortify_seq_1 = layer_sequence_create("effect_layer",global.player_locale_1.x+112,global.player_locale_1.y+230,seq_fortify)
		seq_restore_change_1 = scr_change_numbers(restore_amount,global.player_locale_1.x+global.health_offset_x,global.player_locale_1.y+328);
		global.player_locale_1.health_locale += restore_amount;
	}
	if global.player_locale_2 != noone {
		fortify_seq_2 = layer_sequence_create("effect_layer",global.player_locale_2.x+112,global.player_locale_2.y+230,seq_fortify)
		seq_restore_change_2 = scr_change_numbers(restore_amount,global.player_locale_2.x+global.health_offset_x,global.player_locale_2.y+328);
		global.player_locale_2.health_locale += restore_amount;
	}
	if global.player_locale_3 != noone {
		fortify_seq_3 = layer_sequence_create("effect_layer",global.player_locale_3.x+112,global.player_locale_3.y+230,seq_fortify)
		seq_restore_change_3 = scr_change_numbers(restore_amount,global.player_locale_3.x+global.health_offset_x,global.player_locale_3.y+328);
		global.player_locale_3.health_locale += restore_amount;
	}
	if global.player_locale_4 != noone {
		fortify_seq_4 = layer_sequence_create("effect_layer",global.player_locale_4.x+112,global.player_locale_4.y+230,seq_fortify)
		seq_restore_change_4 = scr_change_numbers(restore_amount,global.player_locale_4.x+global.health_offset_x,global.player_locale_4.y+328);
		global.player_locale_4.health_locale += restore_amount;
	}
} else {
	if global.opp_locale_1 != noone {
		fortify_seq_1 = layer_sequence_create("effect_layer",global.opp_locale_1.x+112,global.opp_locale_1.y+230,seq_fortify)
		seq_restore_change_1 = scr_change_numbers(restore_amount,global.opp_locale_1.x+global.health_offset_x,global.opp_locale_1.y+328);
		global.opp_locale_1.health_locale += restore_amount;
	}
	if global.opp_locale_2 != noone {
		fortify_seq_2 = layer_sequence_create("effect_layer",global.opp_locale_2.x+112,global.opp_locale_2.y+230,seq_fortify)
		seq_restore_change_2 = scr_change_numbers(restore_amount,global.opp_locale_2.x+global.health_offset_x,global.opp_locale_2.y+328);
		global.opp_locale_2.health_locale += restore_amount;
	}
	if global.opp_locale_3 != noone {
		fortify_seq_3 = layer_sequence_create("effect_layer",global.opp_locale_3.x+112,global.opp_locale_3.y+230,seq_fortify)
		seq_restore_change_3 = scr_change_numbers(restore_amount,global.opp_locale_3.x+global.health_offset_x,global.opp_locale_3.y+328);
		global.opp_locale_3.health_locale += restore_amount;
	}
	if global.opp_locale_4 != noone {
		fortify_seq_4 = layer_sequence_create("effect_layer",global.opp_locale_4.x+112,global.opp_locale_4.y+230,seq_fortify)
		seq_restore_change_4 = scr_change_numbers(restore_amount,global.opp_locale_4.x+global.health_offset_x,global.opp_locale_4.y+328);
		global.opp_locale_4.health_locale += restore_amount;
	}
}
alarm[0] = 80;