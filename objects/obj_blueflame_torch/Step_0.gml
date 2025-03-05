/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else {
		wait = true
		//if opp = false {
		//	if global.priority = "player" && global.no_pass_prio = false {
		//		global.priority = "opp";
		//	} else {
		//		global.no_pass_prio = false;
		//	}
		//}
	} 
}

if wait_stack = true {
	wait_stack = false;
	alarm[2] = 10;
}