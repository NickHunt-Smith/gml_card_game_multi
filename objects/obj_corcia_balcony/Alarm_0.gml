/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

var opp_highest = 0;
var player_highest = 0;
if global.opp_locale_1 != noone {
	if global.opp_locale_1.rarity > opp_highest {
		opp_highest = global.opp_locale_1.rarity;
	}
} 
if global.opp_locale_2 != noone {
	if global.opp_locale_2.rarity > opp_highest {
		opp_highest = global.opp_locale_2.rarity;
	}
}
if global.opp_locale_3 != noone {
	if global.opp_locale_3.rarity > opp_highest {
		opp_highest = global.opp_locale_3.rarity;
	}
}
if global.opp_locale_4 != noone {
	if global.opp_locale_4.rarity > opp_highest {
		opp_highest = global.opp_locale_4.rarity;
	}
}
if global.player_locale_1 != noone {
	if global.player_locale_1.rarity > player_highest {
		player_highest = global.player_locale_1.rarity;
	}
} 
if global.player_locale_2 != noone {
	if global.player_locale_2.rarity > player_highest {
		player_highest = global.player_locale_2.rarity;
	}
}
if global.player_locale_3 != noone {
	if global.player_locale_3.rarity > player_highest {
		player_highest = global.player_locale_3.rarity;
	}
}
if global.player_locale_4 != noone {
	if global.player_locale_4.rarity > player_highest {
		player_highest = global.player_locale_4.rarity;
	}
}

if player_highest >= opp_highest {
	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	seq_restore_change_1 = scr_change_numbers(strength_boost,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += strength_boost; 
	
	seq_restore_change_2 = scr_change_numbers(channel_boost,card_state.x+global.channel_offset_x,card_state.y+328);
	if card_state.frozen = true {
		card_state.memory_channel += channel_boost;
	} else {
		card_state.channel += channel_boost;
	}
	alarm[1] = 100;
} else {
	alarm[1] = 1;
}

