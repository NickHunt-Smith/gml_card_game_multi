/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else {
		wait = true
		//if opp = false {
		//	if global.priority = "player" && global.no_pass_prio = false {
		//		global.priority = "opp";
		//	} else {
		//		global.no_pass_prio = false;
		//	}
		//}
	} 
}

if wait_stack = true {
	
	if opp = false {
		if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone {
			seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
			wait = true;
			alarm[0] = 80;
		} else {
			while (target_1 = noone) {
				var temp = random(100);
				if temp < 25 {
					target_1 = global.opp_locale_1;
				} else if (temp >= 25) && (temp < 50) {
					target_1 = global.opp_locale_2;
				} else if (temp >= 50) && (temp < 75) {
					target_1 = global.opp_locale_3;
				} else if (temp >= 75) {
					target_1 = global.opp_locale_4;
				}
			}
			wait = true;
			alarm[2] = 10;
		}
	
		wait_stack = false;
	} else {
		target_1 = noone;
		if global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
			seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
			wait = true;
			alarm[0] = 80;
		} else {
			while (target_1 = noone) {
				var temp = random(100);
				if temp < 25 {
					target_1 = global.player_locale_1;
				} else if (temp >= 25) && (temp < 50) {
					target_1 = global.player_locale_2;
				} else if (temp >= 50) && (temp < 75) {
					target_1 = global.player_locale_3;
				} else if (temp >= 75) {
					target_1 = global.player_locale_4;
				}
			}
			wait = true;
			alarm[2] = 10;
		}
	
		wait_stack = false;
		
	}
}