/// @description Insert description here
// You can write your code in this editor

if array_max(global.channelled_right_player) >= global.win_threshold && array_max(global.channelled_left_player) >= global.win_threshold && global.end_game_trigger = false {
	global.player_enabled = false;
	global.end_game_trigger = true;
	
	global.music_controller.music_curr = noone;
	alarm[1] = 60;
}

if array_max(global.channelled_left_player) >= global.win_threshold && power_swirling = noone {
	if global.channelled_left_player[0] >= global.win_threshold {
		power_swirling = part_system_create(Ps_ruby_swirl);
	} else if global.channelled_left_player[1] >= global.win_threshold {
		power_swirling = part_system_create(Ps_pearl_swirl);
	} else if global.channelled_left_player[2] >= global.win_threshold {
		power_swirling = part_system_create(Ps_onyx_swirl);
	} else if global.channelled_left_player[3] >= global.win_threshold {
		power_swirling = part_system_create(Ps_sapphire_swirl);
	} else if global.channelled_left_player[4] >= global.win_threshold {
		power_swirling = part_system_create(Ps_emerald_swirl);
	} else if global.channelled_left_player[5] >= global.win_threshold {
		power_swirling = part_system_create(Ps_citrine_swirl);
	} else if global.channelled_left_player[6] >= global.win_threshold {
		power_swirling = part_system_create(Ps_opal_swirl);
	} else if global.channelled_left_player[7] >= global.win_threshold {
		power_swirling = part_system_create(Ps_amethyst_swirl);
	}
	part_system_position(power_swirling,x + 110,y + 90);
	part_system_depth(power_swirling,-950);
}