/// @description Insert description here
// You can write your code in this editor

if scr_check_if_targets("opp") = true or scr_check_if_targets("player") = true {
	
	targets = [];
	var max_health = 0;
	if global.opp_locale_1 != noone {
		if global.opp_locale_1.health_locale = max_health {
			array_push(targets,global.opp_locale_1);
		} else if global.opp_locale_1.health_locale > max_health {
			max_health = global.opp_locale_1.health_locale;
			targets = [global.opp_locale_1];
		}
	}
	if global.opp_locale_2 != noone {
		if global.opp_locale_2.health_locale = max_health {
			array_push(targets,global.opp_locale_2);
		} else if global.opp_locale_2.health_locale > max_health {
			max_health = global.opp_locale_2.health_locale;
			targets = [global.opp_locale_2];
		}
	}
	if global.opp_locale_3 != noone {
		if global.opp_locale_3.health_locale = max_health {
			array_push(targets,global.opp_locale_3);
		} else if global.opp_locale_3.health_locale > max_health {
			max_health = global.opp_locale_3.health_locale;
			targets = [global.opp_locale_3];
		}
	}
	if global.opp_locale_4 != noone {
		if global.opp_locale_4.health_locale = max_health {
			array_push(targets,global.opp_locale_4);
		} else if global.opp_locale_4.health_locale > max_health {
			max_health = global.opp_locale_4.health_locale;
			targets = [global.opp_locale_4];
		}
	}
	if global.player_locale_1 != noone {
		if global.player_locale_1.health_locale = max_health {
			array_push(targets,global.player_locale_1);
		} else if global.player_locale_1.health_locale > max_health {
			max_health = global.player_locale_1.health_locale;
			targets = [global.player_locale_1];
		}
	}
	if global.player_locale_2 != noone {
		if global.player_locale_2.health_locale = max_health {
			array_push(targets,global.player_locale_2);
		} else if global.player_locale_2.health_locale > max_health {
			max_health = global.player_locale_2.health_locale;
			targets = [global.player_locale_2];
		}
	}
	if global.player_locale_3 != noone {
		if global.player_locale_3.health_locale = max_health {
			array_push(targets,global.player_locale_3);
		} else if global.player_locale_3.health_locale > max_health {
			max_health = global.player_locale_3.health_locale;
			targets = [global.player_locale_3];
		}
	}
	if global.player_locale_4 != noone {
		if global.player_locale_4.health_locale = max_health {
			array_push(targets,global.player_locale_4);
		} else if global.player_locale_4.health_locale > max_health {
			max_health = global.player_locale_4.health_locale;
			targets = [global.player_locale_4];
		}
	}
	
	channel_up_seqs = [];
	seq_restore_change_1s = [];
	for (var _i = 0; _i < array_length(targets); _i++) {
		array_push(channel_up_seqs,layer_sequence_create("effect_layer",targets[_i].x+112,targets[_i].y+184,seq_channel_up));
		array_push(seq_restore_change_1s,scr_change_numbers(bonus_channel,targets[_i].x+global.channel_offset_x,targets[_i].y+328));
		if targets[_i].frozen = true {
			targets[_i].memory_channel += bonus_channel;
		} else {
			targets[_i].channel += bonus_channel;
		}
	}
	alarm[0] = 90;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}