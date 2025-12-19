if exit_game_button != noone {
	instance_destroy(exit_game_button);
	exit_game_button = noone;
}

if volume_button_sfx != noone {
	instance_destroy(volume_button_sfx);
	volume_button_sfx = noone;
}

if volume_button_music != noone {
	instance_destroy(volume_button_music);
	volume_button_music = noone;
}