
if tutorial_step = 2 or tutorial_step = 45 {
	global.tutorial_step += 1;
	global.wait_for_tutorial_step = false;
	instance_destroy();
}