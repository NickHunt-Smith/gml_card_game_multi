if global.resolve_stack = false {
	if global.player.passed = true {
		global.priority = "player";
		global.player_enabled = false;
		global.wait_for_effect = false;
		global.end_turn_active = true;
		global.player.passed = false;
	} else {
		global.opponent.passed = true;
		global.priority = "player";
		global.player_enabled = true;
	}
} else {
	alarm[1] = 1;
}