
if button_draw = true && global.big_mode = false {
	if view_opp = false and (mouse_x < 1527 + 48 and mouse_x > 1527 - 48) and (mouse_y < 753 + 48 and mouse_y > 753 - 48) {
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