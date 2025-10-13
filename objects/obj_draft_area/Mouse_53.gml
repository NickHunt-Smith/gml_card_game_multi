
if button_draw = true && global.big_mode = false {
	if view_opp = false and (mouse_x < 1527 + 48 and mouse_x > 1527 - 48) and (mouse_y < 753 + 48 and mouse_y > 753 - 48) {
		reroll_active = false;
		view_opp = true;
		part_system_depth(summon_whirlpool_1,-10);
		part_system_depth(summon_whirlpool_2,-10);
		part_system_depth(summon_whirlpool_3,-10);
		part_system_depth(sparkle_rain,-10);
		part_system_depth(shooting_stars,-10);
		x_memory_1 = card_inst_1.x
		x_memory_2 = card_inst_2.x
		x_memory_3 = card_inst_3.x
		card_inst_1.x = -1000;
		card_inst_2.x = -1000;
		card_inst_3.x = -1000;
		global.draft_area_visible = false;
	} else if view_opp = true and (mouse_x < 1527 + 48 and mouse_x > 1527 - 48) and (mouse_y < 753 + 48 and mouse_y > 753 - 48) {
		reroll_active = true;
		view_opp = false;
		part_system_depth(summon_whirlpool_1,-900);
		part_system_depth(summon_whirlpool_2,-900);
		part_system_depth(summon_whirlpool_3,-900);
		part_system_depth(sparkle_rain,-900);
		part_system_depth(shooting_stars,-900);
		card_inst_1.x = x_memory_1;
		card_inst_2.x = x_memory_2;
		card_inst_3.x = x_memory_3;
		global.draft_area_visible = true;
	}
}

if sqrt(sqr(mouse_x-2136) + sqr(mouse_y-753)) < 70 && reroll_active = true && global.rerolls_available > 0 {
	global.rerolls_available -= 1;
	global.rerolls_used += 1;
	
	var rarity = card_inst_1.rarity;
	var card_type = card_inst_1.card_type;
	
	instance_destroy(card_inst_1.created_eff);
	instance_destroy(card_inst_1);
	instance_destroy(card_inst_2.created_eff);
	instance_destroy(card_inst_2);
	instance_destroy(card_inst_3.created_eff);
	instance_destroy(card_inst_3);
	
	var card_inst = noone;
	
	var element = 0;
	if element_locked = true {
		element = element_locked_i;
	} else {
		element = scr_choose_element();
	}
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
	}
	var card_index = 0;
	var temp = random(100);
	for (var _i = 0; _i < array_length(card_index_dist); _i++) {
		if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
			card_index = _i;
		}
	}
	
	var order = 0;
	
	card_inst_1 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	var element = 0;
	if element_locked = true {
		element = element_locked_i;
	} else {
		element = scr_choose_element();
	}
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
	}
	var card_index = 0;
	while element = card_inst_1.element && card_index = card_inst_1.card_index {
		temp = random(100);
		for (var _i = 0; _i < array_length(card_index_dist); _i++) {
			if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
				card_index = _i;
			}
		}
	}
	
	var order = 1;
	
	card_inst_2 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)
	
	var element = 0;
	if element_locked = true {
		element = element_locked_i;
	} else {
		element = scr_choose_element();
	}
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity][element][card_type][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity][element][card_type][0]))
	}
	var card_index = 0;
	while (element = card_inst_1.element && card_index = card_inst_1.card_index) or (element = card_inst_2.element && card_index = card_inst_2.card_index){
		temp = random(100);
		for (var _i = 0; _i < array_length(card_index_dist); _i++) {
			if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
				card_index = _i;
			}
		}
	}
	
	var order = 2;
		
	//// debug
	//if draft_count = 3 {
	//	rarity = 0;
	//	element = 2;
	//	card_type = 1;
	//	card_index = 1;
	//} else if draft_count = 2 {
	//	rarity = 2;
	//	element = 1;
	//	card_type = 0;
	//	card_index = 2;
	//} else if draft_count = 1 {
	//	rarity = 0;
	//	element = 0;
	//	card_type = 1;
	//	card_index = 1;
	//}
	
	card_inst_3 = scr_scry_card(rarity,element,card_type,card_index,order,card_inst)

}