
if global.skip_intro = false {
	if texture_is_ready("Default") = true {
		alarm[3] = 50;
		global.skip_intro = true;
	} else {
		alarm[2] = 1;
	}
} else {
	alarm[0] = 230;
}

global.music_controller.music_curr = snd_title;