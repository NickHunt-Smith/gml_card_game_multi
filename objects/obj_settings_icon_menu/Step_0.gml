if trigger_alpha = false {
	if global.skip_intro = true {
		alarm[10] = 100;
	} else {
		alarm[10] = 600;
	}
	trigger_alpha = true;
}