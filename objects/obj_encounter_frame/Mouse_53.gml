
if (mouse_x < x-91 or mouse_y < y-181 or mouse_x > x + 91 or mouse_y > y + 181) && dont_destroy_yet = false && global.journal_active = false {
	global.encounter_visible = false;
	global.music_controller.music_curr = noone;
	instance_destroy(duel_button);
	instance_destroy();
}