if title_sys != noone && global.cheap_mode = false {
	part_system_destroy(title_sys);
	title_sys = noone;
}

if title_reveal_sys != noone {
	part_system_destroy(title_reveal_sys);
	title_reveal_sys = noone;
}