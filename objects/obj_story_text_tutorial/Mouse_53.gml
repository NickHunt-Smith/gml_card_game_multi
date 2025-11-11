
if global.big_mode = false or global.tutorial_step = 3 or global.tutorial_step = 4 or global.tutorial_step = 5 or global.tutorial_step = 6 or global.tutorial_step = 7 or global.tutorial_step = 8 or global.tutorial_step = 9 or global.tutorial_step = 46 {
	if text_rolling = true { 
		if chars_revealed != string_length(text) {
			chars_revealed = string_length(text); 
		} else {
			if tutorial_step != 2 && tutorial_step != 11 && tutorial_step != 14 && tutorial_step != 25 && tutorial_step != 45 && tutorial_step != 48 && tutorial_step != 49 && tutorial_step != 50 && tutorial_step != 53 && tutorial_step != 56 && tutorial_step != 59 && tutorial_step != 67 && tutorial_step != 70  && tutorial_step != 73 && tutorial_step != 87 && tutorial_step != 89 && tutorial_step != 91 && tutorial_step != 94 && tutorial_step != 95 && tutorial_step != 99 {
				global.tutorial_step += 1;
				global.wait_for_tutorial_step = false;
				instance_destroy();
			}
		}
	}
}