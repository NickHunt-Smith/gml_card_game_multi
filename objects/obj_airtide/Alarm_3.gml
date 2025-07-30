/// @description Insert description here
// You can write your code in this editor

if opp = true {
	if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		alarm[1] = 60;
	} else {
		if sucked_in = true {
			sucked_in = false;
			alarm[5] = 1;
			alarm[4] = 60;
		} else {
			if global.player_locale_1 != noone {
				global.player_locale_1.x = lerp(global.player_locale_1.x,card_state.x,lerp_amount);
				global.player_locale_1.y = lerp(global.player_locale_1.y,card_state.y,lerp_amount);
			}
			if global.player_locale_2 != noone {
				global.player_locale_2.x = lerp(global.player_locale_2.x,card_state.x,lerp_amount);
				global.player_locale_2.y = lerp(global.player_locale_2.y,card_state.y,lerp_amount);
			}
			if global.player_locale_3 != noone {
				global.player_locale_3.x = lerp(global.player_locale_3.x,card_state.x,lerp_amount);
				global.player_locale_3.y = lerp(global.player_locale_3.y,card_state.y,lerp_amount);
			}
			if global.player_locale_4 != noone {
				global.player_locale_4.x = lerp(global.player_locale_4.x,card_state.x,lerp_amount);
				global.player_locale_4.y = lerp(global.player_locale_4.y,card_state.y,lerp_amount);
			}
			alarm[3] = 1;
		}
	}
} else {
	if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_no_targets);
		alarm[1] = 60;
	} else {
		if sucked_in = true {
			sucked_in = false;
			alarm[5] = 1;
			alarm[4] = 60;
		} else {
			if global.opp_locale_1 != noone {
				global.opp_locale_1.x = lerp(global.opp_locale_1.x,card_state.x,lerp_amount);
				global.opp_locale_1.y = lerp(global.opp_locale_1.y,card_state.y,lerp_amount);
			}
			if global.opp_locale_2 != noone {
				global.opp_locale_2.x = lerp(global.opp_locale_2.x,card_state.x,lerp_amount);
				global.opp_locale_2.y = lerp(global.opp_locale_2.y,card_state.y,lerp_amount);
			}
			if global.opp_locale_3 != noone {
				global.opp_locale_3.x = lerp(global.opp_locale_3.x,card_state.x,lerp_amount);
				global.opp_locale_3.y = lerp(global.opp_locale_3.y,card_state.y,lerp_amount);
			}
			if global.opp_locale_4 != noone {
				global.opp_locale_4.x = lerp(global.opp_locale_4.x,card_state.x,lerp_amount);
				global.opp_locale_4.y = lerp(global.opp_locale_4.y,card_state.y,lerp_amount);
			}
			alarm[3] = 1;
		}
	}
} 