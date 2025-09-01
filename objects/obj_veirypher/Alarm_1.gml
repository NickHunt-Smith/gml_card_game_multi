/// @description Insert description here
// You can write your code in this editor

if time_seq != noone {
	layer_sequence_destroy(time_seq);
	time_seq = noone;
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}

global.end_turn_active = true;
global.opponent.passed = false;
global.wait_for_effect = false;