/// @description Insert description here
// You can write your code in this editor

if array_max(global.channelled_right_opp) >= 20 && power_swirling = noone {
	if global.channelled_right_opp[0] >= 20 {
		power_swirling = part_system_create(Ps_ruby_swirl);
	} else if global.channelled_right_opp[1] >= 20 {
		power_swirling = part_system_create(Ps_pearl_swirl);
	} else if global.channelled_right_opp[2] >= 20 {
		power_swirling = part_system_create(Ps_onyx_swirl);
	}
	part_system_position(power_swirling,x + 110,y + 90);
	part_system_depth(power_swirling,-850);
}