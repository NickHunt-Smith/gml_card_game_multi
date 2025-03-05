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
	
	if global.opp_locale_1 = noone && global.opp_locale_2 = noone && global.opp_locale_3 = noone && global.opp_locale_4 = noone && global.player_locale_1 = noone && global.player_locale_2 = noone && global.player_locale_3 = noone && global.player_locale_4 = noone {
		seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
		wait = true;
		alarm[0] = 80;
	} else {
		targets = [];
		var min_health = 1000;
		if global.opp_locale_1 != noone {
			if global.opp_locale_1.health_locale = min_health {
				array_push(targets,global.opp_locale_1);
			} else if global.opp_locale_1.health_locale < min_health {
				min_health = global.opp_locale_1.health_locale;
				targets = [global.opp_locale_1];
			}
		}
		if global.opp_locale_2 != noone {
			if global.opp_locale_2.health_locale = min_health {
				array_push(targets,global.opp_locale_2);
			} else if global.opp_locale_2.health_locale < min_health {
				min_health = global.opp_locale_2.health_locale;
				targets = [global.opp_locale_2];
			}
		}
		if global.opp_locale_3 != noone {
			if global.opp_locale_3.health_locale = min_health {
				array_push(targets,global.opp_locale_3);
			} else if global.opp_locale_3.health_locale < min_health {
				min_health = global.opp_locale_3.health_locale;
				targets = [global.opp_locale_3];
			}
		}
		if global.opp_locale_4 != noone {
			if global.opp_locale_4.health_locale = min_health {
				array_push(targets,global.opp_locale_4);
			} else if global.opp_locale_4.health_locale < min_health {
				min_health = global.opp_locale_4.health_locale;
				targets = [global.opp_locale_4];
			}
		}
		if global.player_locale_1 != noone {
			if global.player_locale_1.health_locale = min_health {
				array_push(targets,global.player_locale_1);
			} else if global.player_locale_1.health_locale < min_health {
				min_health = global.player_locale_1.health_locale;
				targets = [global.player_locale_1];
			}
		}
		if global.player_locale_2 != noone {
			if global.player_locale_2.health_locale = min_health {
				array_push(targets,global.player_locale_2);
			} else if global.player_locale_2.health_locale < min_health {
				min_health = global.player_locale_2.health_locale;
				targets = [global.player_locale_2];
			}
		}
		if global.player_locale_3 != noone {
			if global.player_locale_3.health_locale = min_health {
				array_push(targets,global.player_locale_3);
			} else if global.player_locale_3.health_locale < min_health {
				min_health = global.player_locale_3.health_locale;
				targets = [global.player_locale_3];
			}
		}
		if global.player_locale_4 != noone {
			if global.player_locale_4.health_locale = min_health {
				array_push(targets,global.player_locale_4);
			} else if global.player_locale_4.health_locale < min_health {
				min_health = global.player_locale_4.health_locale;
				targets = [global.player_locale_4];
			}
		}
			
			
		wait = true;
		alarm[2] = 10;
	}
	
	wait_stack = false;
		
}