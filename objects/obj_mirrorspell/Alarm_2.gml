
if mirror != noone {
	layer_sequence_destroy(mirror);
	mirror = noone;
}

global.targeting = false;
global.targeting_spell = false;
global.player_enabled = true;
instance_destroy();