/// @description Insert description here
// You can write your code in this editor

if global.priority = "opp" && global.resolve_stack = false && deciding = false && global.end_turn_active = false && global.drafting = false {
	global.opponent.passed = false;
	global.player_enabled = false;
	deciding = true;
	alarm[2] = 30;
}