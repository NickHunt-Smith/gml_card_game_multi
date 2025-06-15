
if mirror != noone {
	layer_sequence_destroy(mirror);
	mirror = noone;
}

if global.player_copying = true {
	global.targeting = false;
	global.targeting_spell = false;
}

if global.priority = "player" {
	global.player_enabled = true;
}
instance_destroy();