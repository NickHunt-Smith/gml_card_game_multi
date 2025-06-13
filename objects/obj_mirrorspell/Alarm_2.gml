
if mirror != noone {
	layer_sequence_destroy(mirror);
	mirror = noone;
}

if global.priority = "player" {
	global.player_enabled = true;
}
instance_destroy();