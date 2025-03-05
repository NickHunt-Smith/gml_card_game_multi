/// @description Insert description here
// You can write your code in this editor

if global.priority = "opp" && global.resolve_stack = false && deciding = false && global.end_turn_active = false && global.drafting = false {
	global.opponent.passed = false;
	global.player_enabled = false;
	deciding = true;
	alarm[2] = 30;
}
	
	
	
//	if global.stack_active = false {
//		if global.opp_locale_1 = noone {
//			var effect_arr = scr_play_locale(true,"left_opp",0,2,0,global.player_locale_1,global.player_locale_2,global.player_locale_3);
//			inst_art_locale = effect_arr[0];
//			effect_inst_opp = effect_arr[1];
//			lingering_effect_inst_opp = effect_arr[2];
			
//		} else if instance_exists(effect_inst_opp) = false && pass = false {
//			if instance_exists(inst_art_locale) = true {
//				if inst_art_locale.destroy_dust = false {
//					pass = true;
//					alarm[0] = 40;
//				}
//			}
//		}
//	} 
//	else {
//		if spell_playing = false {
//			alarm[1] = 40;
//			spell_playing = true;
//		}
		
		
//	}
//}