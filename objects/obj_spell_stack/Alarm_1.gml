
if sync_draft() = false {
	alarm[1] = 1;
} else { 
	global.resolve_stack = false;
	global.stack_active = false;
	instance_destroy();
	if global.priority = "player" {
		global.player_enabled = true;
	}
}