function scr_choose_element(){
	var channel_threshold_1 = 2;
	var channel_threshold_2 = 4;
	var channel_threshold_3 = 6;
	var channel_threshold_4 = 8;
	
	var total_ruby = global.channelled_left_player_ruby + global.channelled_right_player_ruby;
	var total_pearl = global.channelled_left_player_pearl + global.channelled_right_player_pearl;
	var total_onyx = global.channelled_left_player_onyx + global.channelled_right_player_onyx;
	var total_sapphire = global.channelled_left_player_sapphire + global.channelled_right_player_sapphire;
	var total_emerald = global.channelled_left_player_emerald + global.channelled_right_player_emerald;
	var total_citrine = global.channelled_left_player_citrine + global.channelled_right_player_citrine;
	var total_opal = global.channelled_left_player_opal + global.channelled_right_player_opal;
	var total_amethyst = global.channelled_left_player_amethyst + global.channelled_right_player_amethyst;
	var totals_channeled = [total_ruby,total_pearl,total_onyx,total_sapphire,total_emerald,total_citrine,total_opal,total_amethyst];
	var probs = [0,0,0,0,0,0,0,0]
			
	var max_channel_1 = 0;
	var max_channel_1_ind = 0;
	var max_channel_2 = 0;
	var max_channel_2_ind = 0;
	var max_channel_3 = 0;
	var max_channel_3_ind = 0;
	var max_channel_4 = 0;
	var max_channel_4_ind = 0;
	for (var _i = 0; _i < array_length(totals_channeled); _i++) {
		if totals_channeled[_i] > max_channel_1 {
			max_channel_4 = max_channel_3;
			max_channel_4_ind = max_channel_3_ind;
			max_channel_3 = max_channel_2;
			max_channel_3_ind = max_channel_2_ind;
			max_channel_2 = max_channel_1;
			max_channel_2_ind = max_channel_1_ind;
			max_channel_1 = totals_channeled[_i];
			max_channel_1_ind = _i;
		} else {
			if totals_channeled[_i] > max_channel_2 {
				max_channel_4 = max_channel_3;
				max_channel_4_ind = max_channel_3_ind;
				max_channel_3 = max_channel_2;
				max_channel_3_ind = max_channel_2_ind;
				max_channel_2 = totals_channeled[_i];
				max_channel_2_ind = _i;
			} else {
				if totals_channeled[_i] > max_channel_3 {
					max_channel_4 = max_channel_3;
					max_channel_4_ind = max_channel_3_ind;
					max_channel_3 = totals_channeled[_i];
					max_channel_3_ind = _i;
				} else {
					if totals_channeled[_i] > max_channel_4 {
						max_channel_4 = totals_channeled[_i];
						max_channel_4_ind = _i;
					}
				}
			}
		}
	}
			
	if max_channel_1 < channel_threshold_1 {
		for (var _i = 0; _i < array_length(probs); _i++) {
			if _i = 0 {
				probs[_i] = 12.5;
			} else {
				probs[_i] = probs[_i-1] + 12.5;
			}
		}
	} else if max_channel_1 < channel_threshold_2 {
		if max_channel_2 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind {
					if _i = 0 {
						probs[_i] = 20;
					} else {
						probs[_i] = probs[_i-1] + 20;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-20)/7;
					} else {
						probs[_i] = probs[_i-1] + (100-20)/7;
					}
				}
			}
		} else if max_channel_3 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 20;
					} else {
						probs[_i] = probs[_i-1] + 20;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-40)/6;
					} else {
						probs[_i] = probs[_i-1] + (100-40)/6;
					}
				}
			}
		} else if max_channel_4 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 20;
					} else {
						probs[_i] = probs[_i-1] + 20;
					}
				} else if _i = max_channel_3_ind {
					if _i = 0 {
						probs[_i] = 15;
					} else {
						probs[_i] = probs[_i-1] + 15;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-55)/5;
					} else {
						probs[_i] = probs[_i-1] + (100-55)/5;
					}
				}
			}
		} else {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 20;
					} else {
						probs[_i] = probs[_i-1] + 20;
					}
				} else if _i = max_channel_3_ind or _i = max_channel_4_ind {
					if _i = 0 {
						probs[_i] = 15;
					} else {
						probs[_i] = probs[_i-1] + 15;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-70)/4;
					} else {
						probs[_i] = probs[_i-1] + (100-70)/4;
					}
				}
			}
		}
	} else if max_channel_1 < channel_threshold_3 {
		if max_channel_2 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind {
					if _i = 0 {
						probs[_i] = 25;
					} else {
						probs[_i] = probs[_i-1] + 25;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-25)/7;
					} else {
						probs[_i] = probs[_i-1] + (100-25)/7;
					}
				}
			}
		} else if max_channel_3 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 25;
					} else {
						probs[_i] = probs[_i-1] + 25;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-50)/6;
					} else {
						probs[_i] = probs[_i-1] + (100-50)/6;
					}
				}
			}
		} else if max_channel_4 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 25;
					} else {
						probs[_i] = probs[_i-1] + 25;
					}
				} else if _i = max_channel_3_ind {
					if _i = 0 {
						probs[_i] = 15;
					} else {
						probs[_i] = probs[_i-1] + 15;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-65)/5;
					} else {
						probs[_i] = probs[_i-1] + (100-65)/5;
					}
				}
			}
		} else {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 20;
					} else {
						probs[_i] = probs[_i-1] + 20;
					}
				} else if _i = max_channel_3_ind or _i = max_channel_4_ind {
					if _i = 0 {
						probs[_i] = 15;
					} else {
						probs[_i] = probs[_i-1] + 15;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-80)/4;
					} else {
						probs[_i] = probs[_i-1] + (100-80)/4;
					}
				}
			}
		}
	} else if max_channel_1 < channel_threshold_4 {
		if max_channel_2 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind {
					if _i = 0 {
						probs[_i] = 30;
					} else {
						probs[_i] = probs[_i-1] + 30;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-30)/7;
					} else {
						probs[_i] = probs[_i-1] + (100-30)/7;
					}
				}
			}
		} else if max_channel_3 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 30;
					} else {
						probs[_i] = probs[_i-1] + 30;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-60)/6;
					} else {
						probs[_i] = probs[_i-1] + (100-60)/6;
					}
				}
			}
		} else if max_channel_4 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 30;
					} else {
						probs[_i] = probs[_i-1] + 30;
					}
				} else if _i = max_channel_3_ind {
					if _i = 0 {
						probs[_i] = 15;
					} else {
						probs[_i] = probs[_i-1] + 15;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-75)/5;
					} else {
						probs[_i] = probs[_i-1] + (100-75)/5;
					}
				}
			}
		} else {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 30;
					} else {
						probs[_i] = probs[_i-1] + 30;
					}
				} else if _i = max_channel_3_ind or _i = max_channel_4_ind {
					if _i = 0 {
						probs[_i] = 15;
					} else {
						probs[_i] = probs[_i-1] + 15;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-90)/4;
					} else {
						probs[_i] = probs[_i-1] + (100-90)/4;
					}
				}
			}
		}
	} else {
		if max_channel_2 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind {
					if _i = 0 {
						probs[_i] = 35;
					} else {
						probs[_i] = probs[_i-1] + 35;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-35)/7;
					} else {
						probs[_i] = probs[_i-1] + (100-35)/7;
					}
				}
			}
		} else if max_channel_3 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 35;
					} else {
						probs[_i] = probs[_i-1] + 35;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-70)/6;
					} else {
						probs[_i] = probs[_i-1] + (100-70)/6;
					}
				}
			}
		} else if max_channel_4 = 0 {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 35;
					} else {
						probs[_i] = probs[_i-1] + 35;
					}
				} else if _i = max_channel_3_ind {
					if _i = 0 {
						probs[_i] = 10;
					} else {
						probs[_i] = probs[_i-1] + 10;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-80)/5;
					} else {
						probs[_i] = probs[_i-1] + (100-80)/5;
					}
				}
			}
		} else {
			for (var _i = 0; _i < array_length(probs); _i++) {
				if _i = max_channel_1_ind or _i = max_channel_2_ind {
					if _i = 0 {
						probs[_i] = 35;
					} else {
						probs[_i] = probs[_i-1] + 35;
					}
				} else if _i = max_channel_3_ind or _i = max_channel_4_ind {
					if _i = 0 {
						probs[_i] = 10;
					} else {
						probs[_i] = probs[_i-1] + 10;
					}
				} else {
					if _i = 0 {
						probs[_i] = (100-90)/4;
					} else {
						probs[_i] = probs[_i-1] + (100-90)/4;
					}
				}
			}
		}
	}
		
	var temp = random(100);
	var element = 0;
	if temp < probs[0] {
		element = 0;
	} else if temp >= probs[0] && temp < probs[1] {
		element = 1;
	} else if temp >= probs[1] && temp <= probs[2] {
		element = 2;
	} else if temp >= probs[2] && temp <= probs[3] {
		element = 3;
	} else if temp >= probs[3] && temp <= probs[4] {
		element = 4;
	} else if temp >= probs[4] && temp <= probs[5] {
		element = 5;
	} else if temp >= probs[5] && temp <= probs[6] {
		element = 6;
	} else if temp >= probs[6] && temp <= probs[7] {
		element = 7;
	}
	
	return element
}