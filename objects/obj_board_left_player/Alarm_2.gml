

if summit_flare != noone && summit_emitter = false {
	summit_clicks = 0;
	part_system_destroy(summit_flare);
	summit_flare = noone;
}

if summit_emitter = true {
	part_emitter_destroy_all(summit_flare)
	summit_emitter = false;
	alarm[2] = 70;
}