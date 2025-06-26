/// @description Insert description here
// You can write your code in this editor

if array_max(global.channelled_right_opp) >= global.win_threshold && array_max(global.channelled_left_opp) >= global.win_threshold && global.end_game_trigger = false {
	global.opp_enabled = false;
	global.end_game_trigger = true;
	
	alarm[1] = 60;
}

if array_max(global.channelled_left_opp) >= global.win_threshold && power_swirling = noone {
	if global.channelled_left_opp[0] >= global.win_threshold {
		power_swirling = part_system_create(Ps_ruby_swirl);
	} else if global.channelled_left_opp[1] >= global.win_threshold {
		power_swirling = part_system_create(Ps_pearl_swirl);
	} else if global.channelled_left_opp[2] >= global.win_threshold {
		power_swirling = part_system_create(Ps_onyx_swirl);
	}
	part_system_position(power_swirling,x + 110,y + 90);
	part_system_depth(power_swirling,-850);
}