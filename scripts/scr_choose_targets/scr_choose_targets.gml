// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_choose_targets(target_type){
	opp_targets = scr_check_if_targets("opp");
	player_targets = scr_check_if_targets("player");
	
	// Rank player threats
	var threat_1 = noone;
	var threat_2 = noone;
	if player_targets = true {
		var max_channel = 0;
		var max_strength = 0;
		var max_rarity = 0;
		if global.player_locale_1 != noone {
			max_channel = global.player_locale_1.channel;
			max_strength = global.player_locale_1.health_locale;
			max_rarity = global.player_locale_1.rarity;
			threat_1 = global.player_locale_1;
		}
		if global.player_locale_2 != noone {
			if threat_1 = noone {
				max_channel = global.player_locale_2.channel;
				max_strength = global.player_locale_2.health_locale;
				max_rarity = global.player_locale_2.rarity;
				threat_1 = global.player_locale_2;
			} else {
				if global.player_locale_2.channel > max_channel {
					threat_2 = threat_1;
					threat_1 = global.player_locale_2;
					max_channel = global.player_locale_2.channel;
					max_strength = global.player_locale_2.health_locale;
					max_rarity = global.player_locale_2.rarity;
				} else if max_channel > global.player_locale_2.channel {
					threat_2 = global.player_locale_2;
				} else if global.player_locale_2.rarity > max_rarity {
					threat_2 = threat_1;
					threat_1 = global.player_locale_2;
					max_channel = global.player_locale_2.channel;
					max_strength = global.player_locale_2.health_locale;
					max_rarity = global.player_locale_2.rarity;
				} else if global.player_locale_2.health_locale > max_strength {
					threat_2 = threat_1;
					threat_1 = global.player_locale_2;
					max_channel = global.player_locale_2.channel;
					max_strength = global.player_locale_2.health_locale;
					max_rarity = global.player_locale_2.rarity;
				} else {
					threat_2 = global.player_locale_2;
				}
			}
		}
		if global.player_locale_3 != noone {
			if threat_1 = noone {
				max_channel = global.player_locale_3.channel;
				max_strength = global.player_locale_3.health_locale;
				max_rarity = global.player_locale_3.rarity;
				threat_1 = global.player_locale_3;
			} else if threat_2 = noone {
				if global.player_locale_3.channel > max_channel {
					threat_2 = threat_1;
					threat_1 = global.player_locale_3;
					max_channel = global.player_locale_3.channel;
					max_strength = global.player_locale_3.health_locale;
					max_rarity = global.player_locale_3.rarity;
				} else if max_channel = global.player_locale_3.channel && global.player_locale_3.rarity > max_rarity {
					threat_2 = threat_1;
					threat_1 = global.player_locale_3;
					max_channel = global.player_locale_3.channel;
					max_strength = global.player_locale_3.health_locale;
					max_rarity = global.player_locale_3.rarity;
				} else if max_channel = global.player_locale_3.channel && global.player_locale_3.rarity = max_rarity && global.player_locale_3.health_locale > max_strength {
					threat_2 = threat_1;
					threat_1 = global.player_locale_3;
					max_channel = global.player_locale_3.channel;
					max_strength = global.player_locale_3.health_locale;
					max_rarity = global.player_locale_3.rarity;
				} else {
					threat_2 = global.player_locale_3;
				}
			} else {
				if global.player_locale_3.channel > max_channel {
					threat_2 = threat_1;
					threat_1 = global.player_locale_3;
					max_channel = global.player_locale_3.channel;
					max_strength = global.player_locale_3.health_locale;
					max_rarity = global.player_locale_3.rarity;
				} else if global.player_locale_3.channel = max_channel && global.player_locale_3.rarity > max_rarity {
					threat_2 = threat_1;
					threat_1 = global.player_locale_3;
					max_channel = global.player_locale_3.channel;
					max_strength = global.player_locale_3.health_locale;
					max_rarity = global.player_locale_3.rarity;
				} else if global.player_locale_3.channel = max_channel && global.player_locale_3.rarity = max_rarity && global.player_locale_3.health_locale > max_strength {
					threat_2 = threat_1;
					threat_1 = global.player_locale_3;
					max_channel = global.player_locale_3.channel;
					max_strength = global.player_locale_3.health_locale;
					max_rarity = global.player_locale_3.rarity;
				} else {
					if global.player_locale_3.channel > threat_2.channel {
						threat_2 = global.player_locale_3;
					} else if global.player_locale_3.channel = threat_2.channel && global.player_locale_3.rarity > threat_2.rarity {
						threat_2 = global.player_locale_3;
					} else if global.player_locale_3.channel = threat_2.channel && global.player_locale_3.rarity = threat_2.rarity && global.player_locale_3.health_locale = threat_2.health_locale {
						threat_2 = global.player_locale_3;
					}
				}
			}
		}
		if global.player_locale_4 != noone {
			if threat_1 = noone {
				max_channel = global.player_locale_4.channel;
				max_strength = global.player_locale_4.health_locale;
				max_rarity = global.player_locale_4.rarity;
				threat_1 = global.player_locale_4;
			} else if threat_2 = noone {
				if global.player_locale_4.channel > max_channel {
					threat_2 = threat_1;
					threat_1 = global.player_locale_4;
					max_channel = global.player_locale_4.channel;
					max_strength = global.player_locale_4.health_locale;
					max_rarity = global.player_locale_4.rarity;
				} else if max_channel = global.player_locale_4.channel && global.player_locale_4.rarity > max_rarity {
					threat_2 = threat_1;
					threat_1 = global.player_locale_4;
					max_channel = global.player_locale_4.channel;
					max_strength = global.player_locale_4.health_locale;
					max_rarity = global.player_locale_4.rarity;
				} else if max_channel = global.player_locale_4.channel && global.player_locale_4.rarity = max_rarity && global.player_locale_4.health_locale > max_strength {
					threat_2 = threat_1;
					threat_1 = global.player_locale_4;
					max_channel = global.player_locale_4.channel;
					max_strength = global.player_locale_4.health_locale;
					max_rarity = global.player_locale_4.rarity;
				} else {
					threat_2 = global.player_locale_4;
				}
			} else {
				if global.player_locale_4.channel > max_channel {
					threat_2 = threat_1;
					threat_1 = global.player_locale_4;
					max_channel = global.player_locale_4.channel;
					max_strength = global.player_locale_4.health_locale;
					max_rarity = global.player_locale_4.rarity;
				} else if global.player_locale_4.channel = max_channel && global.player_locale_4.rarity > max_rarity {
					threat_2 = threat_1;
					threat_1 = global.player_locale_4;
					max_channel = global.player_locale_4.channel;
					max_strength = global.player_locale_4.health_locale;
					max_rarity = global.player_locale_4.rarity;
				} else if global.player_locale_4.channel = max_channel && global.player_locale_4.rarity = max_rarity && global.player_locale_4.health_locale > max_strength {
					threat_2 = threat_1;
					threat_1 = global.player_locale_4;
					max_channel = global.player_locale_4.channel;
					max_strength = global.player_locale_4.health_locale;
					max_rarity = global.player_locale_4.rarity;
				} else {
					if global.player_locale_4.channel > threat_2.channel {
						threat_2 = global.player_locale_4;
					} else if global.player_locale_4.channel = threat_2.channel && global.player_locale_4.rarity > threat_2.rarity {
						threat_2 = global.player_locale_4;
					} else if global.player_locale_4.channel = threat_2.channel && global.player_locale_4.rarity = threat_2.rarity && global.player_locale_4.health_locale = threat_2.health_locale {
						threat_2 = global.player_locale_4;
					}
				}
			}
		}
	}
	
	//if threat_1 != noone {
	//	show_debug_message(threat_1.position)
	//}
	//if threat_2 != noone {
	//	show_debug_message(threat_2.position)
	//}
	
	// Rank opp assets
	var asset_1 = noone;
	var asset_2 = noone;
	if opp_targets = true {
		var max_channel = 0;
		var max_strength = 0;
		var max_rarity = 0;
		if global.opp_locale_1 != noone {
			max_channel = global.opp_locale_1.channel;
			max_strength = global.opp_locale_1.health_locale;
			max_rarity = global.opp_locale_1.rarity;
			asset_1 = global.opp_locale_1;
		}
		if global.opp_locale_2 != noone {
			if asset_1 = noone {
				max_channel = global.opp_locale_2.channel;
				max_strength = global.opp_locale_2.health_locale;
				max_rarity = global.opp_locale_2.rarity;
				asset_1 = global.opp_locale_2;
			} else {
				if global.opp_locale_2.channel > max_channel {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_2;
					max_channel = global.opp_locale_2.channel;
					max_strength = global.opp_locale_2.health_locale;
					max_rarity = global.opp_locale_2.rarity;
				} else if max_channel > global.opp_locale_2.channel {
					asset_2 = global.opp_locale_2;
				} else if global.opp_locale_2.rarity > max_rarity {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_2;
					max_channel = global.opp_locale_2.channel;
					max_strength = global.opp_locale_2.health_locale;
					max_rarity = global.opp_locale_2.rarity;
				} else if global.opp_locale_2.health_locale > max_strength {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_2;
					max_channel = global.opp_locale_2.channel;
					max_strength = global.opp_locale_2.health_locale;
					max_rarity = global.opp_locale_2.rarity;
				} else {
					asset_2 = global.opp_locale_2;
				}
			}
		}
		if global.opp_locale_3 != noone {
			if asset_1 = noone {
				max_channel = global.opp_locale_3.channel;
				max_strength = global.opp_locale_3.health_locale;
				max_rarity = global.opp_locale_3.rarity;
				asset_1 = global.opp_locale_3;
			} else if asset_2 = noone {
				if global.opp_locale_3.channel > max_channel {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_3;
					max_channel = global.opp_locale_3.channel;
					max_strength = global.opp_locale_3.health_locale;
					max_rarity = global.opp_locale_3.rarity;
				} else if max_channel = global.opp_locale_3.channel && global.opp_locale_3.rarity > max_rarity {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_3;
					max_channel = global.opp_locale_3.channel;
					max_strength = global.opp_locale_3.health_locale;
					max_rarity = global.opp_locale_3.rarity;
				} else if max_channel = global.opp_locale_3.channel && global.opp_locale_3.rarity = max_rarity && global.opp_locale_3.health_locale > max_strength {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_3;
					max_channel = global.opp_locale_3.channel;
					max_strength = global.opp_locale_3.health_locale;
					max_rarity = global.opp_locale_3.rarity;
				} else {
					asset_2 = global.opp_locale_3;
				}
			} else {
				if global.opp_locale_3.channel > max_channel {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_3;
					max_channel = global.opp_locale_3.channel;
					max_strength = global.opp_locale_3.health_locale;
					max_rarity = global.opp_locale_3.rarity;
				} else if global.opp_locale_3.channel = max_channel && global.opp_locale_3.rarity > max_rarity {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_3;
					max_channel = global.opp_locale_3.channel;
					max_strength = global.opp_locale_3.health_locale;
					max_rarity = global.opp_locale_3.rarity;
				} else if global.opp_locale_3.channel = max_channel && global.opp_locale_3.rarity = max_rarity && global.opp_locale_3.health_locale > max_strength {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_3;
					max_channel = global.opp_locale_3.channel;
					max_strength = global.opp_locale_3.health_locale;
					max_rarity = global.opp_locale_3.rarity;
				} else {
					if global.opp_locale_3.channel > asset_2.channel {
						asset_2 = global.opp_locale_3;
					} else if global.opp_locale_3.channel = asset_2.channel && global.opp_locale_3.rarity > asset_2.rarity {
						asset_2 = global.opp_locale_3;
					} else if global.opp_locale_3.channel = asset_2.channel && global.opp_locale_3.rarity = asset_2.rarity && global.opp_locale_3.health_locale = asset_2.health_locale {
						asset_2 = global.opp_locale_3;
					}
				}
			}
		}
		if global.opp_locale_4 != noone {
			if asset_1 = noone {
				max_channel = global.opp_locale_4.channel;
				max_strength = global.opp_locale_4.health_locale;
				max_rarity = global.opp_locale_4.rarity;
				asset_1 = global.opp_locale_4;
			} else if asset_2 = noone {
				if global.opp_locale_4.channel > max_channel {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_4;
					max_channel = global.opp_locale_4.channel;
					max_strength = global.opp_locale_4.health_locale;
					max_rarity = global.opp_locale_4.rarity;
				} else if max_channel = global.opp_locale_4.channel && global.opp_locale_4.rarity > max_rarity {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_4;
					max_channel = global.opp_locale_4.channel;
					max_strength = global.opp_locale_4.health_locale;
					max_rarity = global.opp_locale_4.rarity;
				} else if max_channel = global.opp_locale_4.channel && global.opp_locale_4.rarity = max_rarity && global.opp_locale_4.health_locale > max_strength {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_4;
					max_channel = global.opp_locale_4.channel;
					max_strength = global.opp_locale_4.health_locale;
					max_rarity = global.opp_locale_4.rarity;
				} else {
					asset_2 = global.opp_locale_4;
				}
			} else {
				if global.opp_locale_4.channel > max_channel {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_4;
					max_channel = global.opp_locale_4.channel;
					max_strength = global.opp_locale_4.health_locale;
					max_rarity = global.opp_locale_4.rarity;
				} else if global.opp_locale_4.channel = max_channel && global.opp_locale_4.rarity > max_rarity {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_4;
					max_channel = global.opp_locale_4.channel;
					max_strength = global.opp_locale_4.health_locale;
					max_rarity = global.opp_locale_4.rarity;
				} else if global.opp_locale_4.channel = max_channel && global.opp_locale_4.rarity = max_rarity && global.opp_locale_4.health_locale > max_strength {
					asset_2 = asset_1;
					asset_1 = global.opp_locale_4;
					max_channel = global.opp_locale_4.channel;
					max_strength = global.opp_locale_4.health_locale;
					max_rarity = global.opp_locale_4.rarity;
				} else {
					if global.opp_locale_4.channel > asset_2.channel {
						asset_2 = global.opp_locale_4;
					} else if global.opp_locale_4.channel = asset_2.channel && global.opp_locale_4.rarity > asset_2.rarity {
						asset_2 = global.opp_locale_4;
					} else if global.opp_locale_4.channel = asset_2.channel && global.opp_locale_4.rarity = asset_2.rarity && global.opp_locale_4.health_locale = asset_2.health_locale {
						asset_2 = global.opp_locale_4;
					}
				}
			}
		}
	}
	
	
		
	if target_type = "none" {
		targets = [noone,noone,noone];
	} else if target_type = "damage_any_big" {
		if threat_1 != noone && threat_2 != noone {
			if random(100) < 75 {
				targets = [threat_1,noone,noone];
			} else {
				targets = [threat_2,noone,noone];
			}
		} else if threat_1 != noone && threat_2 = noone {
			targets = [threat_1,noone,noone];
		} else {
			targets = ["pass",noone,noone];
		}
	} else if target_type = "damage_any_small" {
		var min_health = 100;
		chosen_target = noone;
		if global.player_locale_1 != noone {
			chosen_target = global.player_locale_1;
			min_health = global.player_locale_1.health_locale;
		}
		if global.player_locale_2 != noone {
			if min_health > global.player_locale_2.health_locale {
				chosen_target = global.player_locale_2;
				min_health = global.player_locale_2.health_locale;
			} 
		}
		if global.player_locale_3 != noone {
			if min_health > global.player_locale_3.health_locale {
				chosen_target = global.player_locale_3;
				min_health = global.player_locale_3.health_locale;
			} 
		}
		if global.player_locale_4 != noone {
			if min_health > global.player_locale_4.health_locale {
				chosen_target = global.player_locale_4;
			} 
		}
		targets = [chosen_target,noone,noone];
	} else if target_type = "damage_big_2" {
		if threat_2 = noone {
			targets = ["pass",noone,noone];
		} else {
			targets = [threat_1,threat_2,noone];
		}
	} else if target_type = "destroy_damaged" {
		if threat_1 != noone && threat_2 != noone {
			if threat_1.health_locale < global.rarity_list[threat_1.rarity][threat_1.element][threat_1.card_type][2][threat_1.card_index] {
				chosen_target = threat_1;
			} else if threat_2.health_locale < global.rarity_list[threat_2.rarity][threat_2.element][threat_2.card_type][2][threat_2.card_index] {
				chosen_target = threat_2;
			} else {
				chosen_target = "pass";
			}
		} else if threat_1 != noone && threat_2 = noone && threat_1.health_locale < global.rarity_list[threat_1.rarity][threat_1.element][threat_1.card_type][2][threat_1.card_index] {
			chosen_target = threat_1;
		} else {
			chosen_target = "pass";
		}
		targets = [chosen_target,noone,noone];
	} else if target_type = "fortify_any_large" {
		if asset_1 != noone && asset_2 != noone {
			if random(100) < 75 {
				chosen_target = asset_1;
			} else {
				chosen_target = asset_2;
			}
		} else if asset_1 != noone && asset_2 = noone {
			chosen_target = asset_1;
		} else {
			chosen_target = "pass";
		}
		targets = [chosen_target,noone,noone];
	} else if target_type = "fortify_any_small" {
		var min_health = 100;
		chosen_target = noone;
		if global.opp_locale_1 != noone {
			chosen_target = global.opp_locale_1;
			min_health = global.opp_locale_1.health_locale;
		}
		if global.opp_locale_2 != noone {
			if min_health > global.opp_locale_2.health_locale {
				chosen_target = global.opp_locale_2;
				min_health = global.opp_locale_2.health_locale;
			} 
		}
		if global.opp_locale_3 != noone {
			if min_health > global.opp_locale_3.health_locale {
				chosen_target = global.opp_locale_3;
				min_health = global.opp_locale_3.health_locale;
			} 
		}
		if global.opp_locale_4 != noone {
			if min_health > global.opp_locale_4.health_locale {
				chosen_target = global.opp_locale_4;
				min_health = global.opp_locale_4.health_locale;
			} 
		}
		targets = [chosen_target,noone,noone];
	} else if target_type = "shield_any" {
		if asset_1 != noone && asset_2 != noone {
			var rand = random(100)
			if rand < 75 && asset_1.shielded = false {
				chosen_target = asset_1;
			} else if rand > 75 && asset_2.shielded = false {
				chosen_target = asset_2;
			} else {
				chosen_target = "pass";
			}
		} else if asset_1 != noone && asset_2 = noone && asset_1.shielded = false {
			chosen_target = asset_1;
		} else {
			chosen_target = "pass";
		}
		targets = [chosen_target,noone,noone];
	} else if target_type = "freeze_any" {
		if threat_1 != noone && threat_2 != noone {
			var rand = random(100)
			if rand < 75 && threat_1.frozen = false {
				chosen_target = threat_1;
			} else if rand > 75 && threat_2.frozen = false {
				chosen_target = threat_2;
			} else {
				chosen_target = "pass";
			}
		} else if threat_1 != noone && threat_2 = noone && threat_1.frozen = false {
			chosen_target = threat_1;
		} else {
			chosen_target = "pass";
		}
		targets = [chosen_target,noone,noone];
	} else if target_type = "destroy_frozen" {
		if threat_1 != noone && threat_2 != noone {
			var rand = random(100)
			if rand < 75 && threat_1.frozen = true {
				chosen_target = threat_1;
			} else if rand > 75 && threat_2.frozen = true {
				chosen_target = threat_2;
			} else {
				chosen_target = "pass";
			}
		} else if threat_1 != noone && threat_2 = noone && threat_1.frozen = true {
			chosen_target = threat_1;
		} else {
			chosen_target = "pass";
		}
		targets = [chosen_target,noone,noone];
	}
		
	return targets
}