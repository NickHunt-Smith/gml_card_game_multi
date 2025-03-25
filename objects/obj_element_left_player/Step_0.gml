/// @description Insert description here
// You can write your code in this editor

if array_max(global.channelled_right_player) >= 20 && array_max(global.channelled_left_player) >= 20 && global.end_game_trigger = false {
	global.player_enabled = false;
	global.end_game_trigger = true;
	
	alarm[1] = 60;
}

if array_max(global.channelled_left_player) >= 20 && power_swirling = noone {
	if global.channelled_left_player[0] >= 20 {
		power_swirling = part_system_create(Ps_ruby_swirl);
	} else if global.channelled_left_player[1] >= 20 {
		power_swirling = part_system_create(Ps_pearl_swirl);
	} else if global.channelled_left_player[2] >= 20 {
		power_swirling = part_system_create(Ps_onyx_swirl);
	}
	part_system_position(power_swirling,x + 110,y + 90);
	part_system_depth(power_swirling,-950);
}