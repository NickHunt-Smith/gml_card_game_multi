/// @description Insert description here
// You can write your code in this editor

if (eff_type = "play") && (wait = false) {
	if eff_done = true {
		instance_destroy();
	} else {
		wait = true
	}
}

if wait_stack = true {
	alarm[4] = 10;
	wait_stack = false;
}