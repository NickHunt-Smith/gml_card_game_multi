/// @description Insert description here
// You can write your code in this editor

if spiral != noone {
	layer_sequence_destroy(spiral);
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}