
if reroll_circle != noone {
	part_emitter_destroy_all(reroll_circle);
}

if reroll_laser != noone {
	layer_sequence_destroy(reroll_laser);
	reroll_laser = noone;
}

wait = false;
eff_done = true;

if eff_type = "play" {
	if global.priority = "player" && opp = false && global.resolve_stack = false {
		global.priority = "opp";
	} 
}
