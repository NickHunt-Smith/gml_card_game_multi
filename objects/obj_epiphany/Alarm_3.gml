reroll_circle = part_system_create(Ps_scry_legendary);
part_system_position(reroll_circle, 2136, 755);
part_system_depth(reroll_circle,-1100);

if opp = false {
	global.next_scry_legendary = true;
}

alarm[0] = 90;