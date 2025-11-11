/// @description Insert description here
// You can write your code in this editor

//if global.priority = "opp" && global.resolve_stack = false && deciding = false && global.end_turn_active = false && global.drafting = false {
//	global.opponent.passed = false;
//	global.player_enabled = false;
//	deciding = true;
//	alarm[2] = 30;
//}

if deciding = false && step_iter < array_length(steps) && global.tutorial_step = steps[step_iter] {
	deciding = true;
	step_iter += 1;
	alarm[2] = 30;
}