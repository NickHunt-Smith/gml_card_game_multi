
player_1_done = false;
player_2_done = false;
player_3_done = false;
player_4_done = false;
opp_1_done = false;
opp_2_done = false;
opp_3_done = false;
opp_4_done = false;
left_opp_boost_done = false;
right_opp_boost_done = false;
left_player_boost_done = false;
right_player_boost_done = false;

if global.end_game_trigger = false {

	global.turn_count += 1;
	if global.tutorial = false {
		var draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 3;
		draft_inst.extra_opp_card = false;
		draft_inst.new_turn = true;
	}
	global.wait_for_effect = true;
	global.end_turn_active = false;
	//global.drafting = true;
	combat_started = false;
	combat_ended = false;
	locked_boosting = false;

}