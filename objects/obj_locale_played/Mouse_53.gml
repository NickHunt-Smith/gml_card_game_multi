/// @description Insert description here
// You can write your code in this editor

if big_mode = true {
	global.big_mode = false;
	big_mode = false;
	if global.drafting = false && global.stack_active = false {
		global.player_enabled = true;
	}
	depth = -800;
}