/// @description Insert description here
// You can write your code in this editor

if game_start = true && global.tutorial = false {
	game_start = false;
	
	// Retrieve cards available
	var file_id = file_text_open_read("cards_avail.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
	    json_string += file_text_read_string(file_id);
	    file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	global.cards_avail_json = json_parse(json_string);
	global.elements_avail = [];
	global.rarity_avail = [];
	for (var _i = 0; _i < 8; _i++) {
		var cards_avail_element = global.cards_avail_json[$ "element" + string(_i)];
		for (var _j = 0; _j < 5; _j++) {
			var cards_avail_rarity = cards_avail_element[$ "rarity" + string(_j)];
			if array_length(cards_avail_rarity[$ "card_type" + string(0)]) > 0 or array_length(cards_avail_rarity[$ "card_type" + string(1)]) > 0 {
				if array_contains(global.rarity_avail,_j) = false {
					array_push(global.rarity_avail,_j);
				}
				array_push(global.elements_avail,_i);
				break
			}
		}
	}
	
	alarm[0] = 1;
}

for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
	global.cards_in_hand[_i].order_in_hand = _i;
}

///////////////////////////////////////////////////////////////////////////////////
// Tutorial
if global.wait_for_tutorial_step = false && global.tutorial = true && game_start = true {
	if global.tutorial_step = 0 {
		global.player = instance_create_depth(0,0,0,obj_player);
		global.opponent = instance_create_depth(0,0,0,obj_opponent_tutorial);
		var opp_hand_manager = instance_create_depth(0,0,0,obj_opp_hand_manager);
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.text_scale = 2;
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 1 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.text_scale = 2;
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 2 {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
		draft_inst.reroll_active = true;
		draft_inst.new_turn = true;
		global.rerolls_available += 1;
	
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 3 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1215;
		story_frame.target_y = 250;
	} else if global.tutorial_step = 4 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1515;
		story_frame.target_y = 302;
	} else if global.tutorial_step = 5 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1515;
		story_frame.target_y = 302;
	} else if global.tutorial_step = 6 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1335;
		story_frame.target_y = 1125;
	} else if global.tutorial_step = 7 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1820;
		story_frame.target_y = 1125;
	} else if global.tutorial_step = 8 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1515;
		story_frame.target_y = 895;
	} else if global.tutorial_step = 9 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 10 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 11 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 12 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 1540;
		story_frame.target_y = 32;
	} else if global.tutorial_step = 13 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 14 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 15 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 80;
	} else if global.tutorial_step = 16 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 17 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 18 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 19 {
		alarm[1] = 120;
	} else if global.tutorial_step = 20 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 21 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 22 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 23 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 909;
		story_frame.target_y = 892;
	} else if global.tutorial_step = 24 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 25 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 2135;
		story_frame.target_y = 754;
	} else if global.tutorial_step = 26 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 80;
	} else if global.tutorial_step = 27 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 28 {
		alarm[1] = 200;
	} else if global.tutorial_step = 29 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 30 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 31 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 32 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 33 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 34 {
		alarm[1] = 280;
	} else if global.tutorial_step = 35 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 36 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 37 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 38 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 39 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 40 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 41 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 42 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 43 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 44 {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
		draft_inst.reroll_active = true;
		draft_inst.new_turn = true;
		global.rerolls_available += 1;
		alarm[1] = 120;
	} else if global.tutorial_step = 45 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 46 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 47 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 48 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 49 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 50 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 51 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 52 {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
		draft_inst.reroll_active = true;
		alarm[1] = 120;
	} else if global.tutorial_step = 53 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 54 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 55 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 56 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 57 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 80;
	} else if global.tutorial_step = 58 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 59 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 60 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 20;
	} else if global.tutorial_step = 61 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 62 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 63 {
		alarm[1] = 120;
	} else if global.tutorial_step = 64 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 65 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 66 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 67 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 68 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 280;
	} else if global.tutorial_step = 69 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 70 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 71 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 100;
	} else if global.tutorial_step = 72 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 100;
	} else if global.tutorial_step = 73 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 74 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 40;
	} else if global.tutorial_step = 75 {
		alarm[1] = 1100;
	} else if global.tutorial_step = 76 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 77 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 78 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 79 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 80 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 81 {
		story_frame = instance_create_depth(1520,-40,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.text_scale = 2;
	} else if global.tutorial_step = 82 {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
		draft_inst.reroll_active = true;
		draft_inst.new_turn = true;
		global.rerolls_available += 1;
	} else if global.tutorial_step = 83 {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
		draft_inst.reroll_active = true;
	} else if global.tutorial_step = 84 {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
		draft_inst.reroll_active = true;
		alarm[1] = 120;
	} else if global.tutorial_step = 85 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 86 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 87 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
		story_frame.arrow = true;
		story_frame.target_x = 2136;
		story_frame.target_y = 755;
	} else if global.tutorial_step = 88 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
	} else if global.tutorial_step = 89 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 90 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 80;
	} else if global.tutorial_step = 91 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 92 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 80;
	} else if global.tutorial_step = 93 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 94 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 95 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 96 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 400;
	} else if global.tutorial_step = 97 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
		alarm[1] = 100;
	} else if global.tutorial_step = 98 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 99 {
		story_frame = instance_create_depth(477,140,-1400,obj_story_text_tutorial);
		story_frame.tutorial_step = global.tutorial_step;
	} else if global.tutorial_step = 100 {
		if story_frame != noone {
			instance_destroy(story_frame);
			story_frame = noone;
		}
	}
	
	global.wait_for_tutorial_step = true;
} 