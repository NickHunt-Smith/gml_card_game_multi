
reroll_circle = part_system_create(Ps_reroll_circle);
part_system_position(reroll_circle, 2136, 755);
part_system_depth(reroll_circle,-1100);

if opp = false {
	global.rerolls_available += 1;
}

alarm[2] = 90;